import json

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
    for doc in unique_docs:
        safe_id = f"doc_{doc.replace(' ', '_').replace('/', '_').replace('(', '').replace(')', '')}"
        mermaid.append(f'    {safe_id}["Document: {doc}"]')

    # Add step nodes
    for step in steps:
        safe_id = f"step_{step['name'].replace(' ', '_')}"
        mermaid.append(f'    {safe_id}["{step["name"]}"]')

    # Add connections between steps
    for step in steps:
        current_step_id = f"step_{step['name'].replace(' ', '_')}"

        # Connect required steps
        for req_step in step.get('required_steps', []):
            if req_step != "Letter of Admission":  # Special case handling
                safe_req_id = f"step_{req_step.replace(' ', '_')}"
                mermaid.append(f'    {safe_req_id} --> {current_step_id}')

        # Connect next steps
        for next_step in step.get('next_steps', []):
            if next_step != "TBD":  # Skip TBD connections
                safe_next_id = f"step_{next_step.replace(' ', '_')}"
                mermaid.append(f'    {current_step_id} --> {safe_next_id}')

        # # Connect required documents
        # for doc in step.get('required_documents', []):
        #     if doc.get('name'):
        #         safe_doc_id = f"doc_{doc['name'].replace(' ', '_').replace('/', '_').replace('(', '').replace(')', '')}"
        #         mermaid.append(f'    direction LR')
        #         mermaid.append(f'    {safe_doc_id} -- required --> {current_step_id}')
        #
        # # Connect received documents
        # for doc in step.get('received_documents', []):
        #     if doc.get('name'):
        #         safe_doc_id = f"doc_{doc['name'].replace(' ', '_').replace('/', '_').replace('(', '').replace(')', '')}"
        #         mermaid.append(f'    direction LR')
        #         mermaid.append(f'    {current_step_id} -- received --> {safe_doc_id}')

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