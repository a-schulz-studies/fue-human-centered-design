import json
from typing import Dict, List, Set

class ProcessFlowGenerator:
    def __init__(self, json_data: dict):
        self.data = json_data
        self.nodes: Set[str] = set()
        self.connections: List[tuple] = []
        self.subgraphs: Dict[str, List[str]] = {}

    def sanitize_node_id(self, name: str) -> str:
        """Convert a name into a valid Mermaid node ID."""
        return ''.join(c for c in name if c.isalnum() or c == '_').strip()

    def add_node(self, name: str, display_name: str = None) -> str:
        """Add a node and return its ID."""
        node_id = self.sanitize_node_id(name)
        if display_name:
            self.nodes.add(f'{node_id}["{display_name}"]')
        else:
            self.nodes.add(f'{node_id}["{name}"]')
        return node_id

    def process_phase(self, phase: dict) -> str:
        """Process a phase and its steps, returning the phase node ID."""
        phase_id = self.add_node(phase['name'])

        # Process steps within the phase
        prev_step_id = None
        for step in phase.get('steps', []):
            step_id = self.add_node(f"{phase_id}_{self.sanitize_node_id(step['name'])}", step['name'])

            # Connect steps in sequence
            if prev_step_id:
                self.connections.append((prev_step_id, step_id))
            prev_step_id = step_id

            # Process requirements
            for req in step.get('requires', []):
                req_id = self.sanitize_node_id(req)
                self.connections.append((req_id, step_id))

        # Process required documents as a subgraph
        if phase.get('required_documents'):
            doc_items = []
            for doc in phase['required_documents']:
                doc_text = f"- {doc['name']}"
                if doc.get('deadline'):
                    doc_text += f" (Due: {doc['deadline']})"
                doc_items.append(doc_text)

            if doc_items:
                self.subgraphs[f"docs_{phase_id}"] = {
                    'title': f"{phase['name']} Documents",
                    'items': doc_items
                }

        return phase_id

    def generate_mermaid(self) -> str:
        """Generate the complete Mermaid diagram markup."""
        mermaid = ["graph TD"]

        # Add start node
        start_id = self.add_node("Start", "Start Process")

        # Process all phases
        prev_phase_id = start_id
        for phase in self.data['phases']:
            phase_id = self.process_phase(phase)
            self.connections.append((prev_phase_id, phase_id))
            prev_phase_id = phase_id

        # Add all nodes
        mermaid.extend([f"    {node}" for node in sorted(self.nodes)])

        # Add all connections
        for source, target in self.connections:
            mermaid.append(f"    {source} --> {target}")

        # Add subgraphs for document requirements
        for subgraph_id, content in self.subgraphs.items():
            mermaid.append(f"    subgraph {subgraph_id}[\"{content['title']}\"]")
            doc_node_id = f"docs_{subgraph_id}"
            doc_content = "<br/>".join(content['items'])
            mermaid.append(f"        {doc_node_id}[\"{doc_content}\"]")
            mermaid.append("    end")

        # Add styling
        mermaid.extend([
            "    %% Styling",
            "    classDef process fill:#f9f,stroke:#333,stroke-width:2px",
            "    classDef docs fill:#fcf,stroke:#333,stroke-width:1px",
            "    class " + ",".join(node.split('[')[0] for node in self.nodes) + " process",
            "    class " + ",".join(f"docs_{sg_id}" for sg_id in self.subgraphs.keys()) + " docs"
        ])

        return "\n".join(mermaid)

def generate_process_flow(json_file_path: str) -> str:
    """Generate a Mermaid process flow diagram from a JSON file."""
    with open(json_file_path, 'r') as f:
        data = json.load(f)

    generator = ProcessFlowGenerator(data)
    return generator.generate_mermaid()

# Example usage:
if __name__ == "__main__":
    # Assuming the JSON file is named 'htw_process_final.json'
    mermaid_markup = generate_process_flow('htw_process_final.json')
    print(mermaid_markup)

    # Optionally save to file
    with open('process_flow.mmd', 'w') as f:
        f.write(mermaid_markup)