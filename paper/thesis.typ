#import "common/titlepage.typ": *
#import "common/metadata.typ": *
#import "style/style.typ": *
#import "@preview/oasis-align:0.2.0": *

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

Ziel der Arbeit ist die Entwicklung eines Prototyps, der ausländische Studierende bei bürokratischen Prozessen unterstützt und diese vereinfacht. Der Prototyp soll individuelle Bedürfnisse berücksichtigen und durch klare Anleitungen, gezieltes Feedback sowie hilfreiche Funktionen den Studierenden dabei helfen, die administrativen Anforderungen effizient und rechtzeitig zu bewältigen. Eine Veränderung oder Optimierung der Prozesse selbst, liegt nicht im Rahmen dieser Arbeit.

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

Die Analyse der Nutzerbedürfnisse ist ein zentraler Bestandteil des Designprozesses, um eine benutzerfreundliche und effektive Lösung für internationale Studierende in Deutschland zu entwickeln.
Im Vorfeld wurde der Prozess der Austauschstudierenden grob analysiert. Daraus haben sich zwei Benutzergruppenprofile ergeben: Austauschstudierende aus EU- und Nicht-EU-Ländern. Aufgrund begrenzter Teilnehmerverfügbarkeit konnten jedoch nur zwei Interviews geführt werden, beide mit Studierenden aus dem EU-Ausland. Diese Interviews wurden genutzt, um die Profile weiter zu verfeinern und Personas #footnote[#link(label("personas"))[Anhang], @personas] zu entwickeln. Diese Personas dienen dazu, die Zielgruppe zu charakterisieren und die Anforderungen an den Prototyp gezielt zu definieren. Sie repräsentieren typische Nutzerprofile und helfen, die Designentscheidungen auf die Bedürfnisse der Zielgruppe auszurichten.

Der Hauptteil der Analyse basiert auf Interviews mit Austauschstudierenden, um die spezifischen Bedürfnisse, Herausforderungen und Ziele dieser Zielgruppe zu verstehen. Die folgenden Abschnitte fassen die wichtigsten Erkenntnisse aus diesen Analysen zusammen und strukturieren diese für einen klaren Überblick.

*Zielgruppe*

Die primäre Zielgruppe dieser Analyse umfasst vorrangig neue Austauschstudierende Austauschstudierende aus EU- und Nicht-EU-Ländern, da diese sich noch besonders gut an die vor kurzem durchlaufenden Prozesse erinnern.


*Schwerpunkte der Interviews*

Ein semistrukturierter Interviewleitfaden #footnote[#link(label("interviewguide"))[Anhang], @interviewguide] wurde entwickelt, um die Erfahrungen, Motivationen, Ziele und Herausforderungen der Austauschstudierenden umfassend zu erfassen. Dabei wurden sowohl bürokratische als auch persönliche Aspekte beleuchtet. Zu den thematisierten Bereichen gehörten unter anderem:

- Aktivitäten zur Vorbereitung und nach der Ankunft
- Visa Prozess, Krankenversicherung, Wohnungssuche
- Persönliche Interessen und Ziele mit dem Auslandsstudium
- Umstände und Umgebung während den Schritten
- Verbesserungsideen

Die Interviews wurden transkribiert #footnote[#link(label("interviewtranscripts"))[Anhang], @interviewtranscripts] und analysiert, um die wichtigsten Erkenntnisse zu identifizieren und die Bedürfnisse der Studierenden zu verstehen.

== Motivationen und Ziele der Studierenden <studentgoals>

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

== Herausforderungen und aktuelle Probleme der Studierenden <studentproblems>

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

#highlight[Anhang/Obsidian challenges und Pain Points noch notewendig?]

== Weitere Erkenntnisse aus der Analyse der Nutzerbedürfnisse <situation-improvemnent>

Die Analyse der Nutzerbedürfnisse hat zusätzliche Einblicke geliefert, die sowohl die genutzten Geräte als auch konkrete Probleme und mögliche Verbesserungsideen betreffen:

*Verwendete Geräte:*
- Laptops sind das bevorzugte Gerät für Recherchen, insbesondere bei komplexeren Aufgaben.
- Mobilgeräte werden ergänzend genutzt, um mobil kleinere Recherchen durchzuführen.

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

#figure(
  image("images/User_Journey_Map_excerpt.png"),
  caption: [
    Auschnitt der User Journey Map
  ],
)<userjourneyexcerpt>

Auf Basis der Interviewergebnisse wurde eine User Journey erstellt, die den gesamten Prozess der Austauschstudierenden visualisiert. Sie zeigt wichtige Kontaktpunkte, typische Herausforderungen und die emotionalen Reaktionen der Studierenden während der verschiedenen Phasen. Ziel der User Journey ist es, kritische Berührungspunkte zu identifizieren und potenzielle Optimierungsmöglichkeiten aufzuzeigen.

In @userjourneyexcerpt ist ein Ausschnitt der User Journey Map dargestellt, der Schritte wie die Auswahl der Universität und die Priorisierung von Studienorten zeigt. Dabei werden zentrale Kontaktpunkte, wie die Stabsstelle Internationales der HTW Dresden oder externe Webseiten, aufgeführt.

Die User Journey bildet auch die emotionalen Höhen und Tiefen der Studierenden ab: Während zu Beginn die Vorfreude auf das Auslandssemester überwiegt, führt die Fülle an Informationen und die Verteilung auf verschiedene Quellen häufig zu Überforderung während der Recherchephase.

Eine Liste aller identifizierten Kontaktpunkte ist im #link(label("contactpoints"))[Anhang] (@interviewsummary) dokumentiert. Die vollständige User Journey Map befindet sich ebenfalls im #link(label("userjourney"))[Anhang] unter @userjourney.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Ideal-Prozess Analyse

Die Analyse des Ideal-Prozesses bildet eine Grundlage, um die tatsächlichen Abläufe der Bürokratie für internationale Studierende zu verstehen und diese mit den wahrgenommenen Herausforderungen aus den Interviews abzugleichen. Aufgrund der zeitlichen Begrenzung der Interviews war es nicht möglich, alle Prozessdetails vollständig zu erfassen. Deshalb, wurden der textuelle Prozesse auf der Website der Stabsstelle Internationales der HTW Dresden untersucht. Dadurch entstand eine wertvolle Vergleichsmöglichkeit zwischen dem ideal beschriebenen Ablauf und den subjektiven Erfahrungen der Studierenden.

*Ziel der Analyse*

Ein zentrales Ziel war es, den Prototyp zusätzlich zur Ausrichtung an den Bedürfnissen der Nutzer:innen, mit den konkreten Inhalten des bürokratischen Prozesses zu füllen. Nur durch eine Kombination beider Ansätze kann eine Lösung entwickelt werden, die sowohl benutzerfreundlich ist als auch die notwendigen Informationen und Schritte präzise abbildet. Außerdem ermöglicht ein mit Inhalt gefüllter Protyp eine realitätsnahe Evaluation und Optimierung, welche im HCD-Prozess essentiell ist.

*Herangehensweise*

Der Prozess wurde zunächst aus den HTML#footnote[Die Hypertext Markup Language ist die Standardauszeichnungssprache für Dokumente, die in einem Webbrowser angezeigt werden sollen.]-Inhalten der Website extrahiert und im JSON-Format#footnote[JavaScript Object Notation ist ein offenes Standard-Dateiformat und Datenaustauschformat, das menschenlesbaren Text zur Speicherung und Übertragung von Datenobjekten verwendet, die aus Name-Wert-Paaren und Arrays bestehen.] dokumentiert.
Dieses Format wurde gewählt, da es einerseits strukturierte Daten ermöglicht, die flexibel angepasst werden können, und andererseits als Input für die Entwicklung des Prototyps dienen kann.
Um die Prozessdaten besser zu verstehen und zu analysieren, wurde zudem eine grafische Darstellung des Prozesses mit Hilfe des Tools Mermaid erstellt. Diese Visualisierung bietet einen klaren Überblick über:
- *Schritte und Phasen des Prozesses*, wie z. B. „Antragstellung und Zulassung“ oder „Kursauswahl und Studienplanung“.
- *Abhängigkeiten zwischen den Schritten*, um kritische Pfade und Engpässe zu identifizieren.
- *Notwendige Dokumente und Fristen*, die für den Erfolg der einzelnen Schritte erforderlich sind.

#pagebreak()
Ein Beispiel für den extrahierten Prozess ist in der JSON-Dokumentation enthalten:

#set text(size: 9pt)
```json
{
  "phases": [
    {
      "name": "Application and admission procedures",
      "steps": [
        {
          "name": "Application Submission",
          "description": "Submit application documents to HTW Dresden",
          "required_documents": [
            {
              "name": "Application for admission to studies",
              "description": "Signed by you and your home university coordinator"
            },
            {
              "name": "(Online) Learning Agreement",
              "description": "Your course selection approved and signed by ..."
            }
          ]
        }
      ]
    }
  ]
}
```
#set text(size: 12pt)

Die JSON-Daten dienen nicht nur als Input für die App, sondern erleichtern auch zukünftige Anpassungen. Sollte sich der Prozess ändern, muss lediglich die JSON-Datei aktualisiert werden, ohne dass größere strukturelle Änderungen an der App notwendig sind.

*Ergebnisse der grafischen Darstellung*

Die erzeugte Mermaid-Darstellung des Prozesses zeigte klar die Verbindungen zwischen den einzelnen Schritten und die Reihenfolge der Aufgaben. Ein Beispielbild der grafischen Darstellung ist im #link(label("idealprocess"))[Anhang] (@mermaidprocess).


Diese Visualisierung erwies sich als hilfreich, um:
- Engpässe im Prozess zu erkennen, wie z. B. lange Wartezeiten auf die Zulassung.
- Verwendungspunkte der Dokumente zu identifizieren, da Dokumente viele in mehreren Phasen und Schritten benötigt werden.

*Erkenntnisse aus dem Austausch mit der Stabsstelle Internationales*

Zusätzlich zu der eigenständigen Anlayse des textuellen Prozesses wurde ein Gespräch mit der Stabsstelle Internationales geführt.
Dieses habt wertvolle Einblicke in die tatsächliche Organisation und Kommunikation der bürokratischen Abläufe für internationale Studierende geliefert. Ein zentrales Ergebnis war, dass Studierende grundsätzlich selbst und proaktiv für die Erledigung der erforderlichen administrativen Schritte verantwortlich sind. Allerdings werden sie dabei aktiv durch die Stabsstelle unterstützt. Hierzu existiert ein fester Kommunikationsplan, in dem genau festgelegt ist, zu welchem Zeitpunkt welche E-Mails mit relevanten Informationen an die Studierenden versendet werden.

Ein wesentliches Problem, das sich in der Praxis zeigt, ist die geringe Nutzung der bereitgestellten Informationsquellen. Obwohl die Website der Stabsstelle umfassende Anleitungen und Erklärungen zu den notwendigen Prozessen bietet, wird sie von den Studierenden kaum genutzt. Gleichzeitig besteht auch bei den versendeten E-Mails das Problem, dass viele dieser Nachrichten nicht gelesen oder nicht ausreichend beachtet werden.

Eine weitere zentrale Erkenntnis war, dass der optimale Ablauf vorsieht, dass Studierende bereits vor ihrer Ankunft in Deutschland alle wesentlichen bürokratischen Schritte einleiten. Idealerweise sollten alle notwendigen Anträge bereits aus dem Ausland gestellt werden, sodass die Studierenden nach ihrer Ankunft direkt auf alle erforderlichen Dokumente und Bestätigungen zugreifen können. Die Möglichkeit, viele Formalitäten schon vorab zu erledigen, wird jedoch nicht immer konsequent genutzt. Dadurch entstehen Verzögerungen, die sich negativ auf die gesamte Ankunfts- und Integrationsphase auswirken können.

Diese Erkenntnisse unterstreichen die Notwendigkeit einer verbesserten Bereitstellung und Strukturierung von Informationen sowie einer gezielteren Kommunikation mit den Studierenden. Ein zentraler Aspekt für die Optimierung des Prozesses besteht darin, die Studierenden frühzeitig und auf eine Weise zu erreichen, die sie tatsächlich wahrnehmen und nutzen.
Die Ergebnisse der Ideal-Prozess-Analyse bilden somit die Grundlage für die Entwicklung eines Prototyps.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Konzeption und Design des Prototyps
//  Nutzungskontext und Ziele der Studierenden als Grundlagen des Prototypen
== Grundlagen des Prototypen

Anhand der Erkenntnisse aus der Analyse der Nutzerbedürfnisse und dem Verständnis für den Ideal-Prozess wurden die wichtigsten Features für den Prototypen identifiziert. Diese sollen die größten Herausforderungen der internationalen Studierenden adressieren und ihre Ziele bestmöglich unterstützen.

*Berücksichtigung von Nutzungskontexten*

Die Entwicklung des Prototyps muss den Nutzungskontext der Zielgruppe berücksichtigen, wie in @situation-improvemnent beschrieben. Da internationale Studierende sowohl mobile als auch Desktop-Geräte nutzen, sollte die Anwendung auf beiden Plattformen optimal funktionieren:

- *Mobile Nutzung:* Die App sollte responsiv und für die mobile Nutzung optimiert sein. Dies umfasst eine klare, reduzierte Darstellung von Informationen, die Möglichkeit, Sitzungen zu unterbrechen und später fortzusetzen, sowie eine intuitive Navigation.
- *Desktop-Nutzung:* Auf Desktop-Geräten sollte die Anwendung mehr Details und umfangreiche Funktionen bieten, wie z. B. die Möglichkeit, Dokumente hochzuladen oder längere Checklisten zu bearbeiten.

*Benutzerfreundlichkeit*

Die Anwendung sollte intuitiv und einfach zu bedienen sein, um die Akzeptanz und Nutzung durch die Studierenden zu maximieren. Dazu gehören:
- Klare, verständliche Sprache und visuelle Hierarchien.
- Minimierung von Klicks und Schritten, um Aufgaben zu erledigen.
- Barrierefreie Gestaltung, um auch Nutzer mit geringen Deutsch- oder Englischkenntnissen zu unterstützen.

*Ziele der Anwendung*

Die Entwicklung der App sollte folgende Ziele verfolgen, um den Studierenden bestmöglich zu helfen:
1. *Schnelle und einfache Orientierung in Deutschland:* Unterstützung bei der Bewältigung bürokratischer Prozesse wie Visum, Krankenversicherung und Stadtregistrierung.
2. *Einfacher Zugang zu relevanten Informationen und Ressourcen:* Bereitstellung von zentralisierten, leicht verständlichen Informationen zu Studienabläufen, Wohnungssuche und kulturellen Angeboten.
3. *Austausch mit anderen Studierenden und Aufbau eines Netzwerks:* Förderung der sozialen Integration durch Vernetzungsmöglichkeiten.
4. *Optimale Nutzung des Aufenthalts und des kulturellen Austauschs:* Unterstützung bei der Planung von Freizeitaktivitäten und Reisen innerhalb Deutschlands und Europas.

== Priorisierung der wichtigsten Features

Basierend auf den identifizierten Herausforderungen (@studentproblems) und den geäußerten Bedürfnissen der Studierenden wurden folgende Features als besonders wichtig eingestuft:

1. *Statusanzeige*
  - *Funktion:* Eine übersichtliche Darstellung des aktuellen Stands im Bewerbungs- und Anmeldeprozess, einschließlich Fristen, Terminen und offenen Aufgaben.
  - *Vorteile:*
    - Schneller Überblick, ob Verzögerungen drohen oder alles im zeitlichen Rahmen liegt.
    - Echtzeit-Erinnerungen für Fristen und Termine, um Prokrastination und Versäumnisse zu vermeiden.
    // Ein langer Visaprozess ist nicht per se problematisch, sondern erst dann, wenn er den Studienstart verzögert. Daher ist es entscheidend, dass das Tool frühzeitig auf mögliche Verzögerungen hinweist und alternative Lösungen vorschlägt.
  - *Relevanz:* Adressiert die Unsicherheit und Überforderung durch komplexe Prozesse und fehlende Rückmeldungen.

2. *Anpassung des Tools an die aktuelle Situation der Studierenden (Personalisierung)*
  - *Funktion:* Das Tool passt sich den individuellen Bedürfnissen der Studierenden an, indem es nur relevante Informationen und Schritte anzeigt.
  - *Vorteile:*
    - Vermeidung von Informationsüberflutung durch gezielte Filterung.
    - Berücksichtigung von Faktoren wie Herkunftsland (EU/Nicht-EU), Studiengang und persönlichen Interessen.
  - *Relevanz:* Erhöht die Benutzerfreundlichkeit und Effizienz, indem es den Fokus auf das Wesentliche lenkt.

3. *Zentrale Schritt-für-Schritt-Anleitungen und Dokumentenliste*
  - *Funktion:* Ein digitaler Kompass, der die Studierenden durch alle bürokratischen Prozesse führt, von der Visumbeantragung bis zur Anmeldung an der Universität.
  - *Vorteile:*
    - Checklisten für jeden Schritt, angepasst an Herkunftsland und Studienziel.
    - Integrierte Vorlagen für Anträge und Links zu offiziellen Formularen.
  - *Relevanz:* Reduziert Fehler, spart Zeit und mindert Unsicherheit bei der Bewältigung bürokratischer Hürden.

*Begründung der Priorisierung*

Die gewählten Features adressieren die *kritischsten Problemstellen* aus den Interviews:
- *Bürokratie* (häufigste Beschwerde) wird durch klare Anleitungen und Terminmanagement entschärft.
- *Unsicherheit* (z. B. bei Fristen oder Dokumenten) wird durch Status-Updates und übersichtliche Schritt-für-Schritt-Anleitungen reduziert.
- *Informationsüberflutung* wird durch Personalisierung und gezielte Filterung vermieden.

Diese Features lassen sich *ohne Prozessänderungen* umsetzen, da sie als übergeordnete Hilfsmittel agieren. Sie ermöglichen es den Studierenden, eigenständiger zu handeln und sich auf ihre Kernziele aus @studentgoals zu konzentrieren, statt in Bürokratie zu versinken.
Eine vollständige Liste aller angedachten Features kann im #link(label("features"))[Anhang] (@features) eingesehen werden.

== Konzeption der einzelnen Features

Anpassung des Tools an die aktuelle Situation der Studierenden (Personalisierung)
*Erfassung der Lebenslage #footnote[Individuellen Situation der Nutzer.]*

Anwendung nicht für jeden gleich. Selektion der Dienste auf Grundlage der Lebenslage
Welche Attribute müssen abgefragt werden um die Lebenslage zu identifizieren?
Danach wird die Lebenslage über erledigte Schritte und erworbene Dokumente verfolgt.
Kann die Situation/Status über die vorhandenen Dokumente dynamisch ohne weiteres zutun der Nutzer verfolgt werden?
Die Lebenslage muss einmalig über Eingabe in ein Formular erfasst werden. Im Verlauf soll diese durch die abgeschlossenen Schritte und die erhaltenen Dokumenete weiterverfolgt werden. Das korrekte Erfassen der Lebenslage ist essentiell, da sonst die falschen Informationen angezeigt werden. Beispielweise benötigen Studierende aus dem EU-Ausland weitere Informationen zu Visum und Krankenversicherung während diese Informationen für EU-Studierende obsolet wären.
Dadurch wird ein personalisiertes Erlebnis geschafft. Bereitstellen der richtigen Informationen zum richtigen Zeipunkt.
Erste Designs wurden in Miro entwickelt. Diese enthalten Wireframes und einfache Abläufe.

*Erfassung der Lebenslage:*

Persönliche Daten
- Name (Personalisierung)
- Herkunftsland (Select - Search)

Informationen zum geplanten Auslandssemester
- Art / Zweck des Aufenthalts (Semester, Vollzeitstudium)
- Aufenthaltsdauer (Visum oder Melden notwendig)
- Startdatum (Welcome week)
- Welches Startsemester
- Studiengang in Dresden

Aktuelle Situation
- Aktuelle Phase (vor, während, nach)
  - Universität auswählen
  - Bewerbung eingereicht
  - Zulassung erhalten
  - Visum beantragt
  - Reise geplant
- Welche Dokumente sind vorhanden
  - Nominierung
  - Zulassung
  - Visum
  - Pass
  - Einwohnermelde
  - ...

// Liste kann zusammengefasst werden, muss nicht so im Abschlusstext dargestellt werden.

Dargestellt in

#oasis-align(
  int-dir: -1,
  figure(
    image("images/Prototyp_Pers_Informationen.png"),
    caption: [
      Prototyp - Erfassung der persönlichen Informationen
    ],
  ),
  figure(
    image("images/Prototyp_Akt_Situation.png"),
    caption: [
      Prototyp - Erfassung der aktuelle Situation
    ],
  ),
)


Ableiten der Fristen für die Aufgaben ...
Diese Daten helfen, relevante Informationen, Aufgaben und Features auf die Bedürfnisse und den Fortschritt der Studierenden zuzuschneiden.

*Statusanzeige*

Verwendung eines Fortschrittsbalkens, um den Studierenden einen Überblick über den aktuellen Stand in der jeweiligen Phase zu geben.
Anzeige einer Ampel (rot, gelb, grün) für den Status im Gesamten Prozess und falls notwending hinweis, falls Verzögerungen drohen oder alles im zeitlichen Rahmen liegt.
Detailansicht aller vorhanden Phasen als Kanban Board mit ähnlicher farbiger Markierung wie bei den Fortschrittsbalken und der Anzahl der erledigten Schritte und notwendigen Schritte.

#oasis-align(
  int-dir: -1,
  figure(
    image("images/Prototyp_Fortschrittsbalken_Ampel.png"),
    caption: [
      Prototyp - Statusübersicht als Fortschrittsbalken und Ampel
    ],
  ),
  figure(
    image("images/Prototyp_Kanban.png"),
    caption: [
      Prototyp - Statusübersicht als Kanban Board
    ],
  ),
)


*Zentrale Schritt-für-Schritt-Anleitungen und Dokumentenlisten*

Bereiche zum Anzeigen der abgeschlossenen Schritte, der vorhanden Dokumente und übersichtliche Darstellung der nächsten Schritte.

Es werden nicht immer alle folgenden Schritte angezeigt, sondern nur die, welche gerade durchgeführt werden können, falls aktuell auf Dokumente gewaretet wird, wird ein Hinweis angezeigt, mit der zu erwartenden Rückmeldedauer.
#figure(
  image("images/Prototyp_Schritte_Dokumente.png", height: 40%),
  caption: [
    Prototyp - Dokumentenliste und nächste Schritte
  ],
)

Für eine bessere Übersicht wird außerdem eine Kalenderansicht mit Terminen bereitgestellt.
Eine detaillierte Übersicht über den Prozess wird durch eine Graphenansicht bereitgestellt, bei dem Schritte und Abhängigkeiten im Prozess übersichtlich dargestellt werden. Somit sollen Unsicherheiten und Informationsbedarf gedeckt werden. Sind einfacher zu verstehen als ein langer Text mit verweisen auf andere Schritte.

#oasis-align(
  int-dir: -1,
  figure(
    image("images/Prototyp_Kalender.png"),
    caption: [
      Prototyp - Kalenderansicht
    ],
  ),
  figure(
    image("images/Prototyp_Graph.png"),
    caption: [
      Prototyp - Detailansicht als Graph
    ],
  ),
)


#highlight[Weitere Grafiken zum Prototyp im Anhang]

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

*Validierung des Ideal-Prozesses*

Im nächsten Schritt soll der extrahierte Prozess mit der Stabsstelle Internationales validiert werden, um die Richtigkeit und Vollständigkeit der Daten sicherzustellen. Gleichzeitig sind weitere Optimierungen geplant, wie z. B.:
- Präzisere Angaben zu Fristen, getrennt nach Sommer- und Wintersemester.
- Vereinheitlichung der Dokumentenbeschreibungen, um Redundanzen zu vermeiden.
- Hinzufügen detaillierter Anweisungen für einzelne Schritte.

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