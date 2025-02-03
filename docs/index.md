# [FuE - Human Centered Design - Exchange students in Germany](https://github.com/a-schulz-studies/fue-human-centered-design)

## Goal

Develop a prototype to help international students with bureaucratic processes in Germany. The prototype should be developed using human centered design.

<img src="https://github.com/a-schulz-studies/fue-human-centered-design/blob/main/img/study-helper.png" alt="study-helper.png">

_Generated using https://recraft.ai._

## Final paper

<object data="https://github.com/a-schulz-studies/fue-human-centered-design/blob/main/paper/thesis.pdf" type="application/pdf" width="100%" height="600px">
  <p>Your browser does not support PDFs. <a href="https://github.com/a-schulz-studies/fue-human-centered-design/blob/main/paper/thesis.pdf">Download the PDF</a> instead.</p>
</object>

## Main repository

[Repository](https://github.com/a-schulz-studies/fue-human-centered-design)

## Repository structure

_The below description is ordered chronologically as the artifacts where developed during the project._

- `TranscriptEditor/`
    - [Transcript Editor Documentation](https://github.com/a-schulz/TranscriptEditor/blob/main/README.md)
    - Submodule with a single html file used as a simple GUI to finetune interview transcripts.
- `ProcessExtractor/`
    - [Process Extractor Documentation](https://github.com/a-schulz-studies/fue-human-centered-design/blob/main/ProcessExtractor/README.md) 
    - Submodule with scripts to extract processes from [Coming to HTWD  - Exchange programmes](https://www.htw-dresden.de/en/international/coming-to-htwd/exchange-programmes).
    - The extracted process is used to generate a mermaid diagram.
    - The visual representation helps to understand dependencies and necessary steps.
    - The process json should later be used as input for the application to add the content to the application.
        - If the process changes, only the json needs to be adjusted.
- `paper/`
    - The final paper was written in Typst and later compiled to pdf.
    - The source for the paper is found in this directory.
