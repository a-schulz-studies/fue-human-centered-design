import json
from typing import Dict, List, Set, Tuple
from collections import defaultdict

class ProcessFlowGenerator:
    def __init__(self, json_data: dict):
        self.data = json_data
        self.nodes: Set[str] = set()
        self.connections: List[Tuple[str, str, str]] = []  # (source, target, label)
        self.subgraphs: Dict[str, Dict] = {}
        self.document_nodes: Dict[str, str] = {}  # document_name -> node_id
        self.document_phase_map: Dict[str, List[str]] = defaultdict(list)  # document_name -> [phase_ids]

    def sanitize_node_id(self, name: str) -> str:
        """Convert a name into a valid Mermaid node ID."""
        return ''.join(c for c in name if c.isalnum() or c == '_').strip()

    def add_node(self, name: str, display_name: str = None, node_type: str = "process") -> str:
        """Add a node and return its ID."""
        node_id = self.sanitize_node_id(name)
        if display_name:
            self.nodes.add(f'{node_id}["{display_name.replace("\"", "")}"]')
        else:
            self.nodes.add(f'{node_id}["{name.replace("\"", "")}"]')
        return node_id

    def add_document_node(self, doc_name: str, doc_info: dict = None) -> str:
        """Add a document node and track it."""
        doc_id = self.sanitize_node_id(doc_name)
        if doc_id not in self.document_nodes:
            display_name = doc_name
            if doc_info and doc_info.get('description'):
                display_name += f"<br/>({doc_info['description']})"
            self.document_nodes[doc_name] = self.add_node(doc_id, display_name, "document")
        return self.document_nodes[doc_name]

    def process_phase(self, phase: dict) -> str:
        """Process a phase and its steps, documents, and dependencies."""
        phase_id = self.add_node(phase['name'])

        # Track required documents
        for doc in phase.get('required_documents', []):
            doc_id = self.add_document_node(doc['name'], doc)
            self.document_phase_map[doc['name']].append(phase_id)
            self.connections.append((doc_id, phase_id, "requires"))

        # Track received documents
        for doc in phase.get('received_documents', []):
            doc_id = self.add_document_node(doc['name'], doc)
            self.document_phase_map[doc['name']].append(phase_id)
            self.connections.append((phase_id, doc_id, "enables"))

        # Create a map of step names to their IDs for this phase
        step_id_map = {}

        # First pass: create all step nodes
        for step in phase.get('steps', []):
            step_id = self.add_node(f"{phase_id}_{self.sanitize_node_id(step['name'])}", step['name'])
            step_id_map[step['name']] = step_id

        # Second pass: process connections between steps
        for step in phase.get('steps', []):
            current_step_id = step_id_map[step['name']]

            # Process requirements
            for req in step.get('requires', []):
                if req in self.document_nodes:
                    # It's a document requirement
                    self.connections.append((self.document_nodes[req], current_step_id, "requires"))
                elif req in step_id_map:
                    # It's a step requirement within the same phase
                    self.connections.append((step_id_map[req], current_step_id, "requires"))

            # Process enables
            for enabled in step.get('enables', []):
                if enabled in self.document_nodes:
                    # It's a document that this step enables
                    self.connections.append((current_step_id, self.document_nodes[enabled], "enables"))
                elif enabled != "TBD" and enabled in step_id_map:
                    # It's a step within the same phase that this step enables
                    self.connections.append((current_step_id, step_id_map[enabled], "enables"))

        return phase_id

    def connect_document_dependencies(self):
        """Connect documents between phases based on requirements and outputs."""
        for doc_name, phases in self.document_phase_map.items():
            if len(phases) > 1:
                for i in range(len(phases) - 1):
                    self.connections.append((phases[i], phases[i + 1], "provides document"))

    def generate_mermaid(self) -> str:
        """Generate the complete Mermaid diagram markup."""
        mermaid = ["graph TD"]

        # Add start node
        start_id = self.add_node("Start", "Start Process")

        # Process all phases
        prev_phase_id = start_id
        for phase in self.data['phases']:
            phase_id = self.process_phase(phase)
            self.connections.append((prev_phase_id, phase_id, ""))
            prev_phase_id = phase_id

        # Connect document dependencies
        self.connect_document_dependencies()

        # Add all nodes
        mermaid.extend([f"    {node}" for node in sorted(self.nodes)])

        # Add all connections with labels
        for source, target, label in self.connections:
            if label:
                mermaid.append(f"    {source} -->|{label}| {target}")
            else:
                mermaid.append(f"    {source} --> {target}")

        # Add styling
        mermaid.extend([
            "    %% Styling",
            "    classDef process fill:#b40200,stroke:#333,stroke-width:2px",
            "    classDef document fill:#006680,stroke:#333,stroke-width:1px",
            "    classDef step fill:#00b45c,stroke:#333,stroke-width:1px",
            f"    class {','.join(node.split('[')[0] for node in self.nodes if '_' not in node)} process",
            f"    class {','.join(self.document_nodes.values())} document",
            f"    class {','.join(node.split('[')[0] for node in self.nodes if '_' in node)} step"
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
    mermaid_markup = generate_process_flow('htw_process_final.json')
    print(mermaid_markup)

    # Optionally save to file
    with open('process_flow.mmd', 'w') as f:
        f.write(mermaid_markup)