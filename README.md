# fue-human-centered-design
Goal: Develop a prototype to help international students with bureaucratic processes in Germany. The prototype should be developped using human centered design.

ToDo:
- [ ] Fix and update Readme
- [ ] Delete old files
- 

The current process extraction is not 100% accurate due to the reason that the steps are submitted to the AI split into separated parts. Thud it is impossible to extract all dependencies to other steps. To solve this issue I extracted the whole text describing the whole process.
The extracted text is saved as `process.txt`.
Because the input tokens are quite limited for the LLM's I need to split the whole text into smaller chunks and ask to finetune the json. I need to repeat the process until the whole text is processed.
Hopefully this adds missing dependencies to the steps.


NotebookLM
Prompt:
```text
htw_process.txt is describing the process for students coming to Germany.

Fix the process by adding missing dependencies, steps or descriptions.
You can find further instruction in process.txt.

Only return the changed parts of the json process.
Only return json!
```

Links in json:
- required documents -> receive documents
- requires -> enables


add condition when different processes are even necessary for specific students


need to check if everything is linked correctly.
All keys for enables and requires should match. There shall be no single keys they need to be paired.

App sollte Guides beeinhalten -> Infos zu den digitalen Tools, ist kein Schritt aber eine Info. (Diff - process vs process_final)


Ich denke mal, wenn man den Prozess einmal so detailliert mit den Abhängigkeiten durchgeht, dann ist das schon mal ein gutes Outcome. Allerdings muss dieser Prozess nochmal im Detail durch die Stabstelle Internationales geprüft werden.

Duplikat:
- Arrival -> Timetable
- During studies -> Timetable
Sollte man zusammenfassen

Ewig gedauert den kompletten Prozess zu extrahieren....
Darstellung des Graphen ist noch nicht abgeschlossen

change json to include: requires, enables, produces at step level rather than process level


received_documents können nur einmal auftreten, ansonsten gibt es inkonsistenzen


meistens sind nicht required steps sondern documente, die für den weiteren prozess benötigt werden