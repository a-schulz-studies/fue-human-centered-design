#import "common/titlepage.typ": *
#import "common/metadata.typ": *
#import "style/style.typ": *
#import "common/acronyms.typ": acro
//#import "common/acronyms.typ": *

#titlepage(
  title: title,
  program: program,
  authors: authors,
  studentNumber: studentNumber,
  advisors: advisors,
)


#show: style.with(
  title: title,
  authors: authors,
)

= Einleitung
// Wichtigkeit, Schilderung des Problems, Forschungsfrage, Ziel der Entwicklung eines Prototypen erklären
// jeweils einzelne Abschnitte zu den unten gelisteten Themen
Hintergrund des Themas
Bürokratische Prozesse sollten keine Hürde sein.

Problemstellung

Ziel der Arbeit: Entwicklung eines Prototyps zur Unterstützung für ausländische Studierende bei den administrativen/bürokratischen Prozessen.


= Methodik erläutern

Human centered design (nicht im Detail erklären sondern eher auf andere verweisen)

Interviews und weitere Nachfragen
Informationen von der Stabsstelle Internationales


= Ergebnisse der Interiews
User Journey
== Herausforderungen und aktuelle Probleme

Abhängigkeit im Prozess
keine Rückmeldung/Antwortzeiten
kritischer Pfad
kein Gefühl wie und wo man im Prozess steht und ob alles zeitlich noch gut passt

== Verbesserungsideen

siehe Interview Output/Followup Questions

== Wichtigste Punkte -> Kein Gefühl, wie gut man im Prozess steht
Es ist egal, ob der Visaprozess lang dauert, solange man trotzdem pünklich mit dem Studium beginnen kann
= Analyse des Ist-Prozesses laut der Stabstelle

Process Mining / Knowledge Graph

= Vorstellung des Prototypen

siehe Präsentation

wie unterstützt welche Ansicht den Studenten

= Ausblick und Fazit

Validierung
Implementierung
Vernetzen mit den Behörden und anderen Institutionen
Anpassung des Unterstützungsgrads
sammeln von weiterem Feedback durch so eine App
Ermitteln von Prozesszeiten durch Nutzerdaten
