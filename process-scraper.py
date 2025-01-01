import bs4
from bs4 import BeautifulSoup
import datetime
import json

def extract_dependencies(html_content):
    soup = BeautifulSoup(html_content, 'html.parser')
    accordion_items = soup.find_all('div', class_='htw_accordion__item')
    
    process = {
        "meta": {
            "date": datetime.datetime.now(datetime.UTC).isoformat(),
            "website": "https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes"
        },
        "phases": []
    }
    
    current_phase = None
    
    for item in accordion_items:
        title = item.find('button', class_='htw_accordion__button').text.strip()
        content = item.find('div', class_='htw_accordion__body')
        
        if "Application" in title:
            current_phase = {
                "name": "Application",
                "steps": [],
                "dependencies": [],
                "required_documents": []
            }
            
            # Extract steps and dependencies
            paragraphs = content.find_all('p')
            for p in paragraphs:
                text = p.text.strip()
                if "after approval" in text.lower():
                    current_phase["dependencies"].append({
                        "type": "approval",
                        "description": "Academic coordinator approval required",
                        "next_step": "Letter of admission issuance"
                    })
                if "letter of admission" in text.lower():
                    current_phase["steps"].append({
                        "name": "Letter of admission",
                        "requires": ["Application submission", "Academic coordinator approval"],
                        "enables": ["Visa application"]
                    })
            
            # Extract required documents
            doc_list = content.find('ul')
            if doc_list:
                for li in doc_list.find_all('li'):
                    current_phase["required_documents"].append(li.text.strip())
            
            process["phases"].append(current_phase)
            
        elif "Visa" in title:
            current_phase = {
                "name": "Visa",
                "requirements": [],
                "dependencies": []
            }
            
            paragraphs = content.find_all('p')
            for p in paragraphs:
                text = p.text.strip()
                if "letter of admission" in text.lower():
                    current_phase["dependencies"].append({
                        "type": "document",
                        "description": "Letter of admission required for visa application",
                        "previous_step": "Application phase completion"
                    })
            
            process["phases"].append(current_phase)
    
    return process

def save_process_json(process, filename='htw_process.json'):
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(process, f, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    with open('website_data.html', 'r', encoding='utf-8') as f:
        html_content = f.read()
    
    process = extract_dependencies(html_content)
    save_process_json(process)