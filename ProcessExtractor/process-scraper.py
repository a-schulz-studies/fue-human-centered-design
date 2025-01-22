import json
from typing import Dict

from ProcessExtractor import ProcessExtractorOpenAI, ProcessExtractorGroq
from config import settings

def save_process(process: str | Dict, filename: str = 'process'):
    if isinstance(process, str):
        with open(f'{filename}.txt', 'w', encoding='utf-8') as f:
            f.write(process)
    else:
        with open(f'{filename}.json', 'w', encoding='utf-8') as f:
            f.write(json.dumps(process, indent=2, ensure_ascii=False))

if __name__ == "__main__":
    # extractor = ProcessExtractorOpenAI(config.openai_key)
    extractor = ProcessExtractorGroq(settings.groq_key)
    with open('website_data_cleaned.html', 'r', encoding='utf-8') as f:
        html_content = f.read()
    
    process = extractor.extract_process(html_content)
    save_process(process)
