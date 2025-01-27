#import "common/titlepage.typ": *
#import "common/metadata.typ": *
#import "style/style.typ": *
#import "@preview/oasis-align:0.2.0": *
#import "@preview/tablem:0.1.0": tablem


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

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Einleitung

*Hintergrund und Motivation*

Pro Semester studieren über 400.000 ausländische Studierende an deutschen Hochschulen @statistischesbundesamtdestatisStudierendeDeutschlandSemester2025. Die Attraktivität Deutschlands als Studienstandort liegt vor allem in der hohen Qualität der Ausbildung, einer breiten Auswahl an Studiengängen sowie der internationalen Anerkennung. Dennoch sehen sich viele Austauschstudierende mit erheblichen bürokratischen Hürden konfrontiert, die sie von ihrem eigentlichen Ziel – der akademischen Ausbildung – ablenken. Fehler oder Verzögerungen in administrativen Prozessen können den Studienstart erheblich beeinträchtigen und stellen eine zusätzliche Belastung dar @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.

*Problemstellung*

Die bürokratischen Prozesse in Deutschland sind für viele ausländische Studierende schwer verständlich und oftmals nicht rechtzeitig zu bewältigen. Probleme wie fehlende Transparenz bei Antragsverfahren, das Einhalten von Fristen oder die Organisation von Unterkünften führen häufig zu Frustration, Stress und Verzögerungen. Ohne angemessene Unterstützung bleibt für die Studierenden weniger Zeit, sich auf ihr Studium zu konzentrieren.

*Zielsetzung*

Ziel der Arbeit ist die Entwicklung eines Prototyps, der ausländische Studierende bei bürokratischen Prozessen unterstützt und diese vereinfacht. Der Prototyp soll individuelle Bedürfnisse berücksichtigen und durch klare Anleitungen, gezieltes Feedback sowie hilfreiche Funktionen den Studierenden dabei helfen, die administrativen Anforderungen effizient und rechtzeitig zu bewältigen.

*Forschungsfrage*

"Wie kann ein Prototyp gestaltet werden, der ausländische Studierende bei den bürokratischen Prozessen in Deutschland unterstützt?"

*Vorgehensweise*

Im Rahmen der Arbeit wird die Methode des Human-Centered Design (HCD) angewandt, um die Perspektiven und Bedürfnisse der Zielgruppe in den Mittelpunkt zu stellen. Durch die iterative Einbindung von Nutzerfeedback wird ein praxisnaher und bedarfsgerechter Prototyp entwickelt. Dieser Ansatz gewährleistet, dass die erarbeiteten Lösungen den realen Anforderungen der Studierenden gerecht werden und ihnen die bürokratischen Abläufe erleichtern.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Methode des Human-Centered Design (HCD)

Human-Centered Design (HCD) ist ein nutzerzentrierter Ansatz, der den Menschen und seine Bedürfnisse in den Mittelpunkt stellt. Ziel ist es, benutzerfreundliche Lösungen zu schaffen, die effizient und effektiv sind. HCD basiert auf den Prinzipien @farooquiImpactHumanCenteredDesign2019:
- *Fokus auf Menschen:* Nutzerbedürfnisse stehen im Vordergrund.
- *Partizipation:* Nutzer*innen sind aktiv am Designprozess beteiligt.
- *Iterativer Ansatz:* Entwicklung in Zyklen von Beobachten, Testen und Verbessern.
- *Kontext:* Soziale, kulturelle und technische Faktoren werden berücksichtigt.
\
*HCD-Prozess*
#oasis-align(
  int-dir: -1,
  [Der HCD-Prozess ist iterativ und umfasst folgende Phasen @farooquiImpactHumanCenteredDesign2019:
    - *Planung:* Definition von Zielen und Einbindung der Stakeholder.
    - *Analyse des Nutzungskontexts:* Untersuchung von Aufgaben, Umgebung und Zielen der Nutzer.
    - *Ermittlung der Nutzerbedürfnisse:* Interviews, Beobachtungen und Workshops zur Identifikation von Anforderungen.
    - *Entwicklung von Prototypen:* Gestaltung und Testen von Designlösungen in Low-
    #footnote[Low-Fidelity bedeutet, dass der Prototyp nur ein Minimum an visuellen Details und Funktionalität aufweist, aber genug Inhalt hat, um das Konzept mit anderen zu teilen.]
    und High-Fidelity #footnote[High-Fidelity ist eine detaillierte Darstellung eines Produkts, die in Funktion, Aussehen, Verhalten oder Bewegung dem geplanten Endprodukt so nahe wie möglich kommt.].
    - *Evaluierung:* Nutzerfeedback und Usability-Tests zur Optimierung der Lösung.],
  figure(
    image("images/HCD-Prozess.png", width: 95%),
    caption: [
      HCD-Prozess nach Farooqui et al. 2019
    ],
  ),
)

#highlight[Die Grafik könnte auch hotizontal nachgebaut werden, dann könnte man sich die zwei Spalten ersparen.]

#pagebreak()
Ein zentraler Aspekt des HCD-Prozesses ist die systematische Darstellung der Nutzer und ihrer Anforderungen, um Designentscheidungen zu unterstützen. Hier kommen Werkzeuge wie Personas, Benutzergruppenprofile und User Journey Maps zum Einsatz:

- *Personas:* Personas sind fiktive, datenbasierte Profile typischer Nutzer, die die wichtigsten Merkmale, Bedürfnisse und Ziele der Zielgruppe repräsentieren. Sie helfen, ein klares Bild der Zielgruppe zu entwickeln und unterstützen Designer dabei, nutzerzentrierte Lösungen zu gestalten.

- *Benutzergruppenprofile:* Diese Profile beschreiben spezifische Gruppen von Nutzern, die ähnliche Verhaltensmuster, Ziele und Herausforderungen teilen. Sie ergänzen Personas, indem sie breitere Trends und Gemeinsamkeiten zwischen den Nutzern aufzeigen und so die Segmentierung und Priorisierung der Anforderungen erleichtern.

- *User Journey Maps:* User Journey Maps visualisieren die Schritte, die Nutzer durchlaufen, um ein bestimmtes Ziel zu erreichen. Sie erfassen die Erfahrungen, Herausforderungen und Emotionen der Nutzer entlang ihres Weges. Dieses Werkzeug hilft, kritische Berührungspunkte zu identifizieren und Optimierungsmöglichkeiten aufzudecken.

Durch die Kombination dieser Werkzeuge wird ein umfassendes Verständnis der Nutzerperspektive geschaffen, das die Grundlage für effektive und benutzerfreundliche Designlösungen bildet.
Die frühzeitige Einbindung von HCD hilft, Designfehler zu vermeiden und die Nutzerakzeptanz zu steigern. Besonders wichtig ist dies bei Werkzeugen, die von Entwicklern genutzt werden, um Effizienz und Benutzerfreundlichkeit sicherzustellen @farooquiImpactHumanCenteredDesign2019.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Analyse der Nutzerbedürfnisse

#highlight[Es wurden gesamt nur 2 Interviews mit Studierenden aus der Nicht-EU durchgeführt.]

Die Analyse der Nutzerbedürfnisse ist ein zentraler Bestandteil des Designprozesses, um eine benutzerfreundliche und effektive Lösung für internationale Studierende in Deutschland zu entwickeln.
Im Vorfeld wurde der Prozess der Austauschstudierenden grob analysiert. Daraus haben sich zwei Benutzergruppenprofile ergeben: Austauschstudierende aus EU und Nicht-EU Ländern. Diese Profile wurden durch Interviews mit Austauschstudierenden weiter verfeinert und zu Personas #footnote[#link(label("personas"))[Anhang], @personas], umgewandelt. Sie dienen dazu, die Zielgruppe zu charakterisieren und die Anforderungen an den Prototyp gezielt zu definieren. Die Personas repräsentieren typische Nutzerprofile und helfen, die Designentscheidungen auf die Bedürfnisse der Zielgruppe auszurichten.

Der Hauptteil der Analyse basiert auf Interviews mit Austauschstudierenden, um die spezifischen Bedürfnisse, Herausforderungen und Ziele dieser Zielgruppe zu verstehen. Die folgenden Abschnitte fassen die wichtigsten Erkenntnisse aus diesen Analysen zusammen und strukturieren diese für einen klaren Überblick.

*Zielgruppe*

Die primäre Zielgruppe dieser Analyse umfasst vorrangig neue Austauschstudierende Austauschstudierende aus EU- und Nicht-EU-Ländern, da diese sich noch besonders gut an die vor kurzem durchlaufenden Prozesse erinnern.


*Schwerpunkte der Interviews*

Ein semistrukturierter Interviewleitfaden #footnote[#link(label("interviewguide"))[Anhang], @interviewguide] wurde entwickelt, um die Erfahrungen, Motivationen, Ziele und Herausforderungen der Austauschstudierenden umfassend zu erfassen. Dabei wurden sowohl bürokratische als auch persönliche Aspekte beleuchtet. Zu den thematisierten Bereichen gehörten:

- Aktivitäten zur Vorbereitung
- Visa Prozess
- Krankenversicherung
- Wohnungssuche
- Aktivitäten nach der Ankunft
- Persönliche Interessen und Ziele mit dem Auslandsstudium
- Umstände und Umgebung während den Schritten
- Verbesserungsideen

Die Interviews wurden transkribiert #footnote[#link(label("interviewtranscripts"))[Anhang], @interviewtranscripts] und analysiert, um die wichtigsten Erkenntnisse zu identifizieren und die Bedürfnisse der Studierenden zu verstehen.

== Motivationen und Ziele

Die Interviews mit Austauschstudierenden haben eine Vielzahl von Motivationen und Zielen aufgezeigt, die ihre Entscheidung für ein Studium in Deutschland beeinflussen. Diese lassen sich wie folgt zusammenfassen:

- *Hochwertige Ausbildung:* Deutschland wird aufgrund seiner international anerkannten, qualitativ hochwertigen und zugleich erschwinglichen Ausbildung geschätzt.
- *Praxisorientierter Ansatz:* Deutsche Hochschulen bieten praxisnahe Lehrkonzepte, die von den Studierenden als Vorteil gegenüber rein theoretischen Ansätzen wahrgenommen werden.
- *Bessere Berufsaussichten:* Ein deutscher Abschluss gilt als Karrieresprungbrett, da er international hohe Anerkennung genießt und die Chancen auf dem Arbeitsmarkt verbessert.
- *Kultureller Austausch:* Viele Studierende sind motiviert, die deutsche Kultur kennenzulernen und Kontakte zu anderen internationalen Studierenden zu knüpfen.
- *Persönliche Weiterentwicklung:* Das Auslandsstudium wird als Möglichkeit gesehen, neue Erfahrungen zu sammeln, Herausforderungen zu meistern und sich persönlich weiterzuentwickeln.
- *Reisen:* Die zentrale Lage Deutschlands in Europa bietet die Gelegenheit, während des Studiums andere europäische Länder zu bereisen.
- *Erfolgreicher Studienabschluss:* Im Mittelpunkt der Ziele steht für die meisten Studierenden der erfolgreiche Abschluss ihres Studiums.
- *Verbesserung der Sprachkenntnisse:* Viele Studierende streben an, ihre Deutschkenntnisse während ihres Aufenthalts zu vertiefen und somit ihre Integration und beruflichen Perspektiven zu fördern.

Diese Erkenntnisse stimmen mit den Ergebnissen aus der Literatur überein: Studienbezogene Gründe wie bessere Berufsaussichten, innovative Studienangebote und forschungsorientierte Lehrmethoden sind zentrale Entscheidungskriterien für ein Studium in Deutschland @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen. Ebenso tragen landesbezogene Faktoren wie die hohe Lebensqualität, Sicherheit und finanzielle Erschwinglichkeit dazu bei, dass Deutschland ein attraktives Ziel für Studierende weltweit ist.

== Herausforderungen und aktuelle Probleme

Der Übergang in ein Studium in Deutschland ist für viele internationale Studierende mit zahlreichen Herausforderungen verbunden. Die Interviews haben gezeigt, dass die Schwierigkeiten in verschiedenen Bereichen auftreten:

*Bewerbungsprozess:*
- Verzögerungen bei Rückmeldungen der Universitäten führen zu Unsicherheiten und Ängsten.
- Die Handhabung und Einreichung physischer Dokumente wird als unnötig kompliziert und zeitaufwändig empfunden, wobei auch die Sorge vor dem Verlust originaler Unterlagen besteht.
- Der Bewerbungsprozess umfasst viele Schritte und erfordert einen erheblichen Zeitaufwand.

*Visaprozess:*
- Lange Bearbeitungszeiten und unklare Verzögerungen im System erschweren die Visumerteilung.
- Schwierigkeiten bei der Terminvereinbarung und bürokratische Hindernisse wie das neue APS-Verfahren erhöhen die Komplexität.
- Probleme entstehen, wenn das Visum an den falschen Aufenthaltsort gebunden ist.

*Unterkunft:*
- Die Wohnungssuche gestaltet sich als große Herausforderung, insbesondere durch die begrenzte Verfügbarkeit von Wohnheimen und die Unsicherheit bei der Verifizierung von Angeboten.
- Studierende mit einem zweiten Master stehen vor zusätzlichen Hindernissen bei der Wohnraumbeschaffung.

*Kulturelle und bürokratische Hürden:*
- Sprachbarrieren in Ämtern und im Alltag erschweren die Kommunikation, da Englisch oft nicht ausreichend unterstützt wird.
- Unübersichtliche und sich ändernde Vorschriften, insbesondere bei der Stadtregistrierung, führen zu Verwirrung.
- Soziale Integration bleibt schwierig, da Kontakte zu deutschen Kommilitonen oft limitiert sind.
- Es fehlt an klaren Informationen über Vergünstigungen oder Anmeldeverfahren.

*Finanzielle Aspekte:*
- Hohe Vorauszahlungen für Vermittler, Visa und Unterkünfte belasten viele Studierende finanziell.
- Einschränkungen im finanziellen Spielraum stellen für einige eine erhebliche Hürde dar.

*Orientierung und Information:*
- Viele Studierende fühlen sich nach der Ankunft orientierungslos und erhalten unzureichende Informationen über die nächsten Schritte.
- Prozesse und Zeitpläne sind oft unübersichtlich, was zu Unsicherheiten führt.

*Weitere Herausforderungen:*
- Die Anerkennung von Vorleistungen und Probleme bei der Konvertierung von ECTS-Punkten erschweren den akademischen Einstieg.
- Jobmöglichkeiten sind aufgrund von Visabestimmungen stark eingeschränkt.

Die genannten Herausforderungen decken sich mit Erkenntnissen aus Studien: Laut Beate Apolinarski & Tasso Brandt (2018) und Morris-Lange (2019) zählen Sprachbarrieren, finanzielle Einschränkungen, Schwierigkeiten bei der sozialen Integration sowie Orientierung im deutschen Studiensystem zu den häufigsten Problemen. Besonders die Wohnungssuche gestaltet sich problematisch – 47 % der Studierenden berichten von großen Schwierigkeiten, eine Unterkunft zu finden, während 34 % erhebliche Sprachprobleme angeben. Auch bürokratische Prozesse, wie die Visa- und Anmeldeverfahren, und die Anerkennung von Vorleistungen gehören zu den häufigsten Hindernissen @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.

Diese Erkenntnisse zeigen, dass die Optimierung bürokratischer Prozesse und die Bereitstellung klarer Informationen entscheidend sind, um den Studierenden den Übergang zu erleichtern.

== Weitere Erkenntnisse aus der Analyse der Nutzerbedürfnisse

Die Analyse der Nutzerbedürfnisse hat zusätzliche Einblicke geliefert, die sowohl die genutzten Geräte als auch konkrete Probleme und mögliche Verbesserungsideen betreffen:

*Verwendete Geräte:*
- Laptops sind das bevorzugte Gerät für Recherchen, insbesondere bei komplexeren Aufgaben.
- Mobilgeräte werden ergänzend genutzt, um mobil kleinere Recherchen durchzuführen.

//*Konkrete Beispiele:*
//  - Schwierigkeiten bei der Umrechnung von ECTS-Punkten stellen eine Herausforderung dar.
//  - Das APS-Verfahren, insbesondere für Masterstudierende aus Indien, führt zu erheblichen Verzögerungen.
#pagebreak()
*Verbesserungsvorschläge:*

Auf Nachfrage wurden in den Interviews konkrete Verbesserungsvorschläge genannt, um die bürokratischen Prozesse für internationale Studierende zu erleichtern:

- *Optimierung des Visa-Prozesses:*
    - Regelmäßige Verfügbarkeit von Visum-Slots, um Wartezeiten zu minimieren.
    - Vereinfachte und klarere Prozesse für die Beantragung von Visa, mit Fokus auf schnellere Bearbeitung und Terminvergabe.

- *Frühzeitige Zulassungsbenachrichtigungen:*
    - Universitäten sollten die Ergebnisse von Zulassungen oder Ablehnungen schneller bereitstellen, idealerweise innerhalb kürzerer Fristen (statt 2-3 Monate), um Studierenden mehr Zeit für die weiteren Schritte wie Visum, Unterkunft und Reisevorbereitungen zu geben.

- *Digitalisierung der Prozesse:*
    - Ersetzung physischer Dokumenteneinreichungen durch vollständig digitale Prozesse zur Reduzierung von Redundanzen und Steigerung der Effizienz.
    - Entwicklung zentraler Plattformen für die Verwaltung und Einreichung aller notwendigen Dokumente.

- *Schritt-für-Schritt-Unterstützung:*
    - Bereitstellung eines digitalen Tools mit:
      - *Dokumentenchecklisten* für Visa, Krankenversicherung und Aufenthaltsanmeldung.
      - *Schritt-für-Schritt-Anleitungen* für wichtige Prozesse wie Anmeldung und Aufenthaltsgenehmigungen.
      - *Erinnerungen und Benachrichtigungen* zu Fristen und Terminen.

- *Mehrsprachige Unterstützung:*
    - Tools und Webseiten sollten sowohl in Deutsch als auch Englisch verfügbar sein, um Sprachbarrieren zu überwinden.

- *Integration hilfreicher Funktionen:*
    - *Kostenkalkulatoren* zur Budgetplanung.
    - *Terminbuchungs-Tools* für Behörden.
    - *Vernetzungsmöglichkeiten* mit anderen internationalen Studierenden.
    - *Notfallkontakte* und Informationen zu Arbeitsmöglichkeiten sowie Karriere- und Aufenthaltsgenehmigungen.

Diese Maßnahmen würden nicht nur die Bürokratie vereinfachen, sondern auch eine effizientere Planung und Integration der Studierenden in Deutschland ermöglichen.

== Strukturierung der Erkenntnisse als User Journey Map

*User Journey*
Aus den Erkenntnissen der Interviews wurde eine User Journey abgeleitet. Die User Journey dient zur Visualisierung der Kontaktpunkte und Herausforderungen der Studierenden während des gesamten Prozesses. Dies ermöglichte es, die Emotionen und Situationen der Nutzer in bestimmten Phasen nachzuvollziehen und dadurch geeignete Maßnahmen abzuleiten. Sie wird vollständig im Anhang bereitgestellt.

\
Die Analyse der Nutzerbedürfnisse hat gezeigt, dass internationale Studierende mit einer Vielzahl von Herausforderungen konfrontiert sind, die von bürokratischen Hürden über sprachliche Barrieren bis hin zu sozialen Integrationsschwierigkeiten reichen. Die Entwicklung einer App mit den genannten Features kann dazu beitragen, diese Herausforderungen zu minimieren und den Studierenden einen erfolgreichen und angenehmen Aufenthalt in Deutschland zu ermöglichen.


Die vollständige User Journey Map ist im #link(label("userjourney"))[Anhang] (@userjourney) zu finden.

#highlight[Ausschnitt einer Phase mit Erklärung zu den Inhalten aus der User Journey]

#highlight[
  - Kontaktpunkte und Informationsquellen
  - Herausforderungen und Probleme
]


#highlight[Verweis ich kann nichts am Prozess ändern und der lange Visaprozess ist erstmal nichts schlechtes, sondern erst, wenn sich dadurch dann der Studienstart verzögert.]
// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Ist-Prozess Analyse

Ist Prozess Analyse zum Abgleich mit dem wahrgenommenen Prozess und um den Prototypen sowohl an den Nutzerbedürfnissen auszurichten als auch den konkreten Inhalt des Prozesses zu erfassen, damit eine zugeschnittene und keine generische Lösung entsteht.

Die Prozesse wurden mithilfe von Process Mining analysiert, um Engpässe, Abhängigkeiten und notwendige Dokuemnte zu identifizieren. Ein Knowledge Graph wurde erstellt, um die Verbindungen zwischen einzelnen Schritten zu visualisieren.

Der extrahierte und strukturierte Prozess sollte gleichzeitig als Input für die Anwendung verwendet werden, damit diese noch im zeitlichen Rahmen mit den Interviewpartnern evaluiert werden kann.

#highlight[Kann ich diesen Punkt noch mit zu einem anderden zusammenfassen?]
#highlight[Verweis auf den Anhang, Bild einfügen?]

= Konzeption und Design des Prototyps

Die Entwicklung einer App sollte folgende Ziele verfolgen:
Schnelle und einfache Orientierung in Deutschland und Bewältigung bürokratischer Prozesse
Einfacher Zugang zu relevanten Informationen und Ressourcen
Austausch mit anderen Studenten und Aufbau eines Netzwerks
Optimale Nutzung des Aufenthalts und der Möglichkeiten des kulturellen Austauschs
Berücksichtigung der persönlichen Bedürfnisse und Interessen der Studenten
Wichtige Features für eine App== Basierend auf den Ergebnissen der Analyse wurden folgende Features als besonders wichtig identifiziert:
Priorität 1 (Unmittelbar wichtig):
Dokumenten-Checkliste mit Deadlines für Visa, Krankenversicherung, Meldebescheinigung
Erinnerung an Deadlines
Mehrsprachige Unterstützung (Englisch, Deutsch)
Schritt-für-Schritt-Anleitungen für Visum, Anmeldung, Aufenthaltserlaubnis
Erasmus-spezifische Informationen
Informationen zum Visumprozess mit allen wichtigen Dokumenten

Informationen zur Krankenversicherung mit Vergleich gesetzlicher und privater Optionen
. *   Rechner für ECTS-Konvertierung. * Informationen zum Sperrkonto

Priorität 2 (Planung und Sicherheit):
◦
Informationen zu Kultur und Orientierung (ÖPNV, Unterschiede)
Integration studentischer Hilfsorganisationen mit Kontaktdaten
Notfallkontakte wie Polizei, Krankenwagen, Botschaften
Seriöse Links zu Wohnungsportalen

Priorität 3 (Soziale und berufliche Integration):
◦
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

Multi-Language Support

Netzwerk Möglichkeiten
. * Notfallkontakte. * Karriere und Arbeitserlaubnisberatung
.
==Nicht-Funktionale Anforderungen==
•
Mobile Nutzung: Die App sollte responsiv und für die mobile Nutzung optimiert sein, mit weniger Text und der Möglichkeit, Sitzungen zu unterbrechen

Benutzerfreundlichkeit: Die App sollte intuitiv und einfach zu bedienen sein.

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

Die Funktionen des Prototypen beruhen auf den Erkenntnissen aus den Interviews aus #highlight[Kreuzverweis] Erkenntnissen der Interviews.

Priorisierung der Features nach Wichtigkeit für die Studierenden

*Funktionen und Features*
Die wichtigsten Funktionen des Prototyps umfassen:
- *Dokumenten-Checkliste*: Alle benötigten Unterlagen auf einen Blick.
- *Erinnerungsfunktion*: Warnungen bei nahenden Deadlines.
- *Mehrsprachige Unterstützung*: Englisch und Deutsch als Grundsprachen.
- *Schritt-für-Schritt-Anleitungen*: Klare Anweisungen für komplexe Prozesse ohne überfordernd zu wirken.
- *Indikator für den Fortschritt:* Ampelsystem und Fortschrittsbalken zur Übersicht.

*Berücksichtigung von Nutzungskontexten*
Der Prototyp ist responsiv und sowohl für mobile Geräte als auch Desktopanwendungen optimiert.

*Erfassung der Lebenslage #footnote[Individuellen Situation der Nutzer.]*
Die Lebenslage muss einmalig über Eingabe in ein Formular erfasst werden. Im Verlauf soll diese durch die abgeschlossenen Schritte und die erhaltenen Dokumenete weiterverfolgt werden. Das korrekte Erfassen der Lebenslage ist essentiell, da sonst die falschen Informationen angezeigt werden. Beispielweise benötigen Studierende aus dem EU-Ausland weitere Informationen zu Visum und Krankenversicherung während diese Informationen für EU-Studierende obsolet wären.

Dadurch wird ein personalisiertes Erlebnis geschafft. Bereitstellen der richtigen Informationen zum richtigen Zeipunkt.

*Low-Fidelity Prototyp*
Erste Designs wurden in Miro entwickelt. Diese enthalten Wireframes und einfache Abläufe.

Wie unterstützt welche Ansicht den Studenten

Kalenderansicht
Graphenansicht

Sind einfacher zu verstehen als ein riesiger Text.

#highlight[Einfügen einiger Screenshots des finalen Wireframes]


// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Diskussion und Ausblick

*Zusammenfassung der Ergebnisse*
Der Prototyp adressiert die Pain Points der Studierenden und bietet personalisierte, proaktive Unterstützung.

*Validierung und Iterationen*
Die Funktionen und das Design müssen durch Nutzerfeedback validiert und iterativ verbessert werden.

*Potenzial*
Der Prototyp könnte die Grundlage für die Entwicklung proaktiver Verwaltungsdienstleistungen
#footnote[Eine proaktive Verwaltungsleistung ist eine Verwaltungsleistung, die die Verwaltung vollständig oder teilweise erbringt, ohne dass Bürger*innen dies erbitten. @pawlowskiTaxonomyProactivePublic2023]
bilden und auf andere Hochschulen übertragen werden.

*Ausblick*
Zukünftige Arbeiten umfassen die technische Implementierung, Validierung und Vernetzung mit Behörden sowie die Anpassung der unterstützenden Prozesse.

*Weitere Features der Anwendung*
- Anpassung des Unterstützungsgrads
- Sammeln von weiterem Feedback durch so eine App
- Ermitteln von Prozesszeiten durch Nutzerdaten

*Fazit*
Ein nutzerzentrierter Prototyp kann die bürokratischen Hürden für ausländische Studierende in Deutschland erheblich reduzieren.

Symptombehandlung oder Ursachenforschung:
- Anwendung hilft bei der Durchführung des Prozesses
- Anpassungen am Prozess (Antwortzeiten, Vernetzung
der Behörden)

Übertragbarkeit: Diskutieren Sie, inwiefern der Prototyp auch für andere Hochschulen oder Städte genutzt werden könnte

der Prototyp einen Beitrag zur Vereinfachung der bürokratischen Prozesse für ausländische Studierende leisten kann.