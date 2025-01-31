#import "@preview/tablem:0.1.0": tablem

#set page(numbering: "1")
// #counter(page).update(1)

#pagebreak()
#heading(numbering: none)[Anhang]<appendix>

#highlight[ANHANGSVERZEICHNIS]

//#show outline.entry.where(page.text: 19): it => {
//if it.page.text == "19" {
//  it.page.text
//} else{
//}}
//
//#outline(
//    title: "Anhangsverzeichnis",
//  )
//
//

#counter(heading).update(0)
#set heading(numbering: "A.1", outlined: false)

= Ergänzendes Material zur Analyse der Nutzerbedürfnisse
== Personas <personas>
== Interviewleitfaden <interviewguide>
== Transkripte der Interviews <interviewtranscripts>
== Zusammenfassung der Erkenntnisse aus den Interviews <interviewsummary>

#highlight[Brauche ich das überhaupt? Motivationen und Probleme sind schon detailliert im Hauptteil vorhanden]

*Kontaktpunkte und Informationsquellen:* <contactpoints>
- Universitätsportale
- DAAD
- Uni-Assist
- Websites wie mastersportal.com, studying-in-germany.org
- Persönliche Kontakte und WG-Mitbewohner
- Studentenorganisationen
- Webseite der Landeshauptstadt Dresden


#set page(
  paper: "a4",
  margin: (
    top: 2cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),
  flipped: true,
)

== User Journey Map <userjourney>

#figure(
  image("../images/User_Journey_Map.png", width: 100%),
  caption: [
    User Journey Map der Austauschstudierenden
  ],
  outlined: false,
)
#set page(
  paper: "a4",
  margin: (
    top: 3cm,
    bottom: 3cm,
    left: 4cm,
    right: 2cm,
  ),
  flipped: false,
)

#pagebreak()
= Ergänzendes Material zur Analyse des Ist-Prozesses
== Ideal-Prozess <idealprocess>

#figure(
  image("../images/Mermaid_process.png"),
  caption: [
    Auschnitt des Ideal-Prozesses in Mermaid-Darstellung
  ],
  outlined: false,
)<mermaidprocess>

#pagebreak()
= Ergänzendes Material zum Prototypen

== Features <features>

#highlight[Priorisierung Notfallkontakte = 1, Ergänzung der Statusanzeige bei Status 1, Personalisierung bei Prio 1]
#highlight[Vollständige Tabelle aus Obsidian einfügen]
#highlight[Tabellenbeschriftung -> native Funktion von typst?]
Priorität 2 (Planung und Sicherheit):

Notfallkontakte wie Polizei, Krankenwagen, Botschaften

Priorität 3 (Soziale und berufliche Integration):

Kostenrechner zur Planung von Semestergebühren, Miete und Versicherungen
Terminbuchungsfunktion für Behörden
Vernetzungsfunktionen für Studenten
Dokumentenübersetzung für behördliche Kommunikation
Feedback-Funktion für Verbesserungsvorschläge
Informationen zu Teilzeitjobs
Unterstützung bei der Arbeitserlaubnis

Priorität 4 (Erweiterte Funktionen):
◦
Integration von Behörden-APIs zur Abfrage des Antragsstatus

Priorität 5 (Zusätzliche Funktionen):
•
Reduzierung von Papierkram durch digitale Dokumenteneinreichung


Netzwerk Möglichkeiten
. * Notfallkontakte. * Karriere und Arbeitserlaubnisberatung
.


#tablem[
  | **Priorität** | **Beschreibung** | **Nutzergruppe** |
  | ------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------- |
  | **1** | **Dokumenten-Checkliste** mit Deadlines für Visa, Krankenversicherung, Meldebescheinigung etc. | Alle Austauschstudenten |
  | **1** | **Erinnerung an Deadlines** um wichtige Termine nicht zu verpassen | Alle Austauschstudenten |
  | **1** | **Mehrsprachige Unterstützung**, mindestens in Englisch und Deutsch, für sprachliche Barrieren. | Alle Austauschstudenten |
  | **1** | **Schritt-für-Schritt-Anleitungen** für Visum, Anmeldung, Aufenthaltserlaubnis und andere Prozesse. | Alle Austauschstudenten |
  | **1.1** | **Erasmus-spezifische Informationen** zu Programmen und Schritten. | Erasmus-Studenten |
  | **1.2** | **Informationen zum Visumprozess** mit allen wichtigen Dokumenten | Nicht EU Austauschstudenten |
  | **1.2** | **Informationen zur Krankenversicherung**, mit Vergleich gesetzlicher und privater Optionen. | Nicht EU Austauschstudenten |
  | **1.2** | **Rechner zum Konvertieren von ECTs** um zu prüfen, ob die Anforderungen an den Universitäten erfüllt werden. | Nicht EU Austauschstudenten |
]

== Prototyp <prototype>

== Screenshots des Prototypen
