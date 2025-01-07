import json

def sanitize_node_id(name: str) -> str:
    """Convert a name into a valid Mermaid node ID."""
    return ''.join(c for c in name if c.isalnum() or c == '_').strip()

def create_mermaid_diagram(data):
    # Initialize sets to track unique documents and steps
    unique_docs = set()
    steps = []

    # Collect all steps and documents across phases
    for phase in data['phases']:
        for step in phase['steps']:
            steps.append(step)
            # Add required documents
            for doc in step.get('required_documents', []):
                if doc.get('name'):
                    unique_docs.add(doc['name'])
            # Add received documents
            for doc in step.get('received_documents', []):
                if doc.get('name'):
                    unique_docs.add(doc['name'])

    # Start building the Mermaid diagram
    mermaid = ["flowchart TD"]

    # Add document nodes
    # mermaid.append('    subgraph Documents')
    for doc in unique_docs:
        safe_id = f"doc_{sanitize_node_id(doc)}"
        mermaid.append(f'    {safe_id}["Document: {doc}"]')
    # mermaid.append('    end')

    # Add step nodes
    for step in steps:
        safe_id = f"step_{sanitize_node_id(step['name'])}"
        mermaid.append(f'    {safe_id}["{step["name"]}"]')

    # Add connections between steps
    for step in steps:
        current_step_id = f"step_{sanitize_node_id(step['name'])}"
        # Connect required steps
        for req_step in step.get('required_steps', []):
            safe_req_id = f"step_{sanitize_node_id(req_step)}"
            mermaid.append(f'    {safe_req_id} --> {current_step_id}')

        # Connect next steps
        # for next_step in step.get('next_steps', []):
        #     if next_step != "TBD":  # Skip TBD connections
        #         safe_next_id = f"step_{next_step.replace(' ', '_')}"
        #         mermaid.append(f'    {current_step_id} --> {safe_next_id}')

        # Connect required documents
        for doc in step.get('required_documents', []):
            if doc.get('name'):
                safe_doc_id = f"doc_{sanitize_node_id(doc['name'])}"
                # mermaid.append(f'    direction LR')
                mermaid.append(f'    {safe_doc_id} -- required --> {current_step_id}')

        # Connect received documents
        for doc in step.get('received_documents', []):
            if doc.get('name'):
                safe_doc_id = f"doc_{sanitize_node_id(doc['name'])}"
                # mermaid.append(f'    direction LR')
                mermaid.append(f'    {current_step_id} -- received --> {safe_doc_id}')
    # Add styling
    mermaid.extend([
        "    %% Styling",
        "    classDef document fill:#006680,stroke:#333,stroke-width:1px",
        f"    class {','.join(f"doc_{sanitize_node_id(doc)}" for doc in unique_docs)} document",
    ])

    return "\n".join(mermaid)

if __name__ == "__main__":
    # Read and parse the JSON
    with open('htw_process_final.json', 'r') as file:
        data = json.loads(file.read())

    # Generate and print the Mermaid diagram
    diagram = create_mermaid_diagram(data)
    print(diagram)
    with open('simple_process_tmp.mmd', 'w') as f:
        f.write(diagram)