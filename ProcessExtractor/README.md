## Getting started
1. Set your environment variables in a `.env` file. E.g. `cp example.env .env` and fill in the values.
2. Make sure you have [poetry](https://python-poetry.org/) installed.
3. Run `poetry install` to install the dependencies.
4. Run the process-scraper.py to generate the htw_process.json file.
5. Run the processJson2MermaidDiagram.py to generate the process_diagram.mmd file.
6. View the diagram e.g. with https://mermaid.live/


### Useful files:
- process.txt
- htw_process.json
- process_diagram.mmd

### Useful scripts:
- process-scraper.py (generates htw_process.json)
- processJson2MermaidDiagram.py (generates process_diagram.json)

## Tbd.:
Add more detailed information to the deadline e.g.:
```json
"deadline": {
            "winter_semester": "June 15",
            "summer_semester": "November 15"
          }
```