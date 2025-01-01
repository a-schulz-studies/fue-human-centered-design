import json
from typing import Dict

from ProcessExtractor import ProcessExtractorOpenAI, ProcessExtractorGroq
from config import config

def save_process_json(process: Dict, filename: str = 'htw_process.json'):
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(process, f, indent=2, ensure_ascii=False)


if __name__ == "__main__":
    # extractor = ProcessExtractorOpenAI(config.openai_key)
    extractor = ProcessExtractorGroq(config.groq_key)
    with open('website_data.html', 'r', encoding='utf-8') as f:
        html_content = f.read()
    
    process = extractor.extract_process(html_content)
    save_process_json(process)
