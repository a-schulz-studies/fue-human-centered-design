# fue-human-centered-design
Goal: Develop a prototype to help international students with bureaucratic processes in Germany. The prototype should be developped using human centered design.


The current process extraction is not 100% accurate due to the reason that the steps are submitted to the AI split into separated parts. Thud it is impossible to extract all dependencies to other steps. To solve this issue I extracted the whole text describing the whole process.
The extracted text is saved as `process.txt`.
Because the input tokens are quite limited for the LLM's I need to split the whole text into smaller chunks and ask to finetune the json. I need to repeat the process until the whole text is processed.
Hopefully this adds missing dependencies to the steps.