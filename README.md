# FuE - Human Centered Design - Exchange students in Germany

## Goal

Develop a prototype to help international students with bureaucratic processes in Germany. The prototype should be developed using human centered design.

![study-helper.png](img/study-helper.png)

_Generated using https://recraft.ai._

## Repository structure

_The below description is ordered chronologically as the artifacts where developed during the project._

- `TranscriptEditor/`
  - Submodule with a single html file used as a simple GUI to finetune interview transcripts.
- `ProcessExtractor/`
  - Submodule with scripts to extract processes from [Coming to HTWD  - Exchange programmes](https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes).
  - The extracted process is used to generate a mermaid diagram.
  - The visual representation helps to understand dependencies and necessary steps.
  - The process json should later be used as input for the application to add the content to the application.
    - If the process changes, only the json needs to be adjusted.
- `paper/`
  - The final paper was written in Typst and later compiled to pdf.
  - The source for the paper is found in this directory.
