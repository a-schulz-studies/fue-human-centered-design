import bs4
from bs4 import BeautifulSoup
from datetime import datetime
import json
import openai
from typing import Dict, List
from config import config

class ProcessExtractor:
    def __init__(self, api_key: str):
        self.client = openai.OpenAI(api_key=api_key)
        
    def _analyze_text(self, text: str, phase_name: str) -> Dict:
        """Use LLM to analyze text and extract structured process information"""
        prompt = f"""
        Extract process information from the following text about {phase_name} phase at HTW Dresden.
        Identify:
        1. Sequential steps required
        2. Dependencies between steps
        3. Required documents
        4. Time constraints or deadlines
        
        Format the response as JSON with this structure:
        {{
            "steps": [
                {{
                    "name": "step name",
                    "description": "what needs to be done",
                    "requires": ["prerequisite steps"],
                    "enables": ["next possible steps"],
                    "deadline": "if applicable"
                }}
            ],
            "dependencies": [
                {{
                    "type": "document/approval/other",
                    "description": "what is required",
                    "previous_step": "step that must be completed",
                    "next_step": "step that becomes possible"
                }}
            ],
            "required_documents": [
                {{
                    "name": "document name",
                    "description": "document details",
                    "deadline": "if applicable"
                }}
            ]
        }}

        Text to analyze:
        {text}
        """
        
        response = self.client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[{"role": "user", "content": prompt}],
            response_format={"type": "json_object"}
        )
        
        return json.loads(response.choices[0].message.content)

    def extract_process(self, html_content: str) -> Dict:
        soup = BeautifulSoup(html_content, 'html.parser')
        accordion_items = soup.find_all('div', class_='htw_accordion__item')
        
        process = {
            "meta": {
                "date": datetime.now().isoformat(),
                "website": "https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes"
            },
            "phases": []
        }
        
        for item in accordion_items:
            title = item.find('button', class_='htw_accordion__button').text.strip()
            content = item.find('div', class_='htw_accordion__body')
            
            if not content:
                continue
                
            # Extract text from content
            text = content.get_text(separator='\n', strip=True)
            
            # Process specific sections based on title
            if any(keyword in title.lower() for keyword in ['application', 'admission', 'visa', 'accommodation', 'insurance']):
                phase_info = self._analyze_text(text, title)
                
                process["phases"].append({
                    "name": title,
                    **phase_info
                })
        
        return process

def save_process_json(process: Dict, filename: str = 'htw_process.json'):
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(process, f, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    extractor = ProcessExtractor(config.openai_key)
    with open('website_data.html', 'r', encoding='utf-8') as f:
        html_content = f.read()
    
    process = extractor.extract_process(html_content)
    save_process_json(process)
