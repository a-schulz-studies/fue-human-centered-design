import datetime
import json
from typing import Dict

import json_repair
import openai
from bs4 import BeautifulSoup
from groq import Groq


class ProcessExtractorOpenAI:
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

        Only include steps that are carried out by students.

        Format the response as JSON with this structure:
        {{
            "steps": [
                {{
                    "name": "step name",
                    "description": "what needs to be done",
                    "required_steps": ["prerequisite steps"],
                    "next_steps": ["next possible steps"],
                    "deadline": "if applicable",
                    "required_documents": [
                        {{
                            "name": "Document name",
                            "description": "Document description"
                        }},
                    ],
                    "received_documents": [
                        {{
                            "name": "Document name",
                            "description": "Document description"
                        }},
                    ]
                }}
            ]
        }}

        Text to analyze:
        {text}

        Response format: json_object
        ONLY RETURN THE JSON OBJECT
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
                "date": datetime.datetime.now(datetime.UTC).isoformat(),
                "website": "https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes"
            },
            "phases": []
        }

        all_content = ""
        for item in accordion_items:
            title = item.find('button', class_='htw_accordion__button').text.strip()
            content = item.find('div', class_='htw_accordion__body')

            if not content:
                continue

            # Extract text from content
            text = content.get_text(separator='\n', strip=True)
            all_content += "\n" + text

            # Process specific sections based on title
            phase_info = self._analyze_text(text, title)

            process["phases"].append({
                "name": title,
                **phase_info
            })

        return process


class ProcessExtractorGroq():
    def __init__(self, api_key: str):
        self.client = Groq(api_key=api_key)

    def _analyze_text(self, text: str, phase_name: str) -> Dict:
        """Use LLM to analyze text and extract structured process information"""
        prompt = f"""
        Extract process information from the following text about {phase_name} phase at HTW Dresden.
        Identify:
        1. Sequential steps required
        2. Dependencies between steps
        3. Required documents
        4. Time constraints or deadlines

        Only include steps that are carried out by students.

        Format the response as JSON with this structure:
        {{
            "steps": [
                {{
                    "name": "step name",
                    "description": "what needs to be done",
                    "required_steps": ["prerequisite steps"],
                    "next_steps": ["next possible steps"],
                    "deadline": "if applicable",
                    "required_documents": [
                        {{
                            "name": "Document name",
                            "description": "Document description"
                        }},
                    ],
                    "received_documents": [
                        {{
                            "name": "Document name",
                            "description": "Document description"
                        }},
                    ]
                }}
            ]
        }}

        Text to analyze:
        {text}

        Response format: json_object
        ONLY RETURN THE JSON OBJECT
        """

        response = self.client.chat.completions.create(
            model="llama-3.3-70b-versatile",
            seed=42,
            messages=[{"role": "user", "content": prompt}],
            # response_format={"type": "json_object"}
        )

        if (response.choices[
            0].message.content == "I'm sorry but I do not have the capability to perform this task for you, I am happy to help you with any other queries you may have."):
            return {
                "steps": []
            }

        return json_repair.loads(response.choices[0].message.content)

    def extract_process(self, html_content: str) -> Dict:
        soup = BeautifulSoup(html_content, 'html.parser')
        accordion_items = soup.find_all('div', class_='htw_accordion__item')

        process = {
            "meta": {
                "date": datetime.datetime.now(datetime.UTC).isoformat(),
                "website": "https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes"
            },
            "phases": []
        }

        all_content = ""
        for item in accordion_items:
            title = item.find('button', class_='htw_accordion__button').text.strip()
            content = item.find('div', class_='htw_accordion__body')

            if not content:
                continue

            # Extract text from content
            text = content.get_text(separator='\n', strip=True)
            all_content += "\n" + text

            # Process specific sections based on title
            phase_info = self._analyze_text(text, title)

            process["phases"].append({
                "name": title,
                **phase_info
            })

        return process
