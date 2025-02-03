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

Pro Semester studieren über 400.000 ausländische Studierende an deutschen Hochschulen @statistischesbundesamtdestatisStudierendeDeutschlandSemester2025. Die Attraktivität Deutschlands als Studienstandort liegt vor allem in der hohen Qualität der Ausbildung, einer breiten Auswahl an Studiengängen sowie der internationalen Anerkennung @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen. Dennoch sehen sich viele Austauschstudierende mit erheblichen bürokratischen Hürden konfrontiert, die sie von ihrem eigentlichen Ziel – der akademischen Ausbildung – ablenken. Fehler oder Verzögerungen in administrativen Prozessen können den Studienstart erheblich beeinträchtigen und stellen eine zusätzliche Belastung dar @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.

*Problemstellung*

Die bürokratischen Prozesse in Deutschland sind für viele ausländische Studierende schwer verständlich und oftmals nicht rechtzeitig zu bewältigen. Probleme wie fehlende Transparenz bei Antragsverfahren, das Einhalten von Fristen oder die Organisation von Unterkünften führen häufig zu Frustration, Stress und Verzögerungen. Ohne angemessene Unterstützung bleibt für die Studierenden weniger Zeit, sich auf ihr Studium zu konzentrieren.

*Zielsetzung*

Ziel der Arbeit ist die Entwicklung eines Prototyps, der ausländische Studierende bei bürokratischen Prozessen unterstützt. Der Prototyp soll individuelle Bedürfnisse berücksichtigen und mit hilfreichen Funktionen den Studierenden dabei helfen, die administrativen Anforderungen effizient und rechtzeitig zu bewältigen. Eine Veränderung oder Optimierung der Prozesse selbst, liegt nicht im Rahmen dieser Arbeit.

*Forschungsfrage*

"Welche funktionalen Anforderungen sollte ein Prototyp erfüllen, um ausländische Studierende bei der Bewältigung bürokratischer Prozesse in Deutschland zu unterstützen?"

*Vorgehensweise*

Im Rahmen der Arbeit wird die Methode des Human-Centered Design angewandt, um die Perspektiven und Bedürfnisse der Zielgruppe in den Mittelpunkt zu stellen. Dadurch soll ein praxisnaher und bedarfsgerechter Prototyp entwickelt werden. Dieser Ansatz gewährleistet, dass die erarbeiteten Lösungen den realen Anforderungen der Studierenden gerecht werden und ihnen die bürokratischen Abläufe erleichtern.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Methode des Human-Centered Design

Human-Centered Design (HCD) ist ein nutzerzentrierter Ansatz, der den Menschen und seine Bedürfnisse in den Mittelpunkt stellt. Ziel ist es, benutzerfreundliche Lösungen zu schaffen, die effizient und effektiv sind. HCD basiert auf den Prinzipien @farooquiImpactHumanCenteredDesign2019:
- *Fokus auf Menschen:* Nutzerbedürfnisse stehen im Vordergrund.
- *Partizipation:* Nutzer:innen sind aktiv am Designprozess beteiligt.
- *Iterativer Ansatz:* Entwicklung in Zyklen.
- *Kontext:* Soziale, kulturelle und technische Faktoren werden berücksichtigt.
\
*HCD-Prozess*
Der HCD-Prozess ist iterativ und umfasst folgende Phasen @farooquiImpactHumanCenteredDesign2019:
- *Planung:* Definition von Zielen und Einbindung der Stakeholder.
- *Analyse des Nutzungskontexts:* Untersuchung von Aufgaben, Umgebung und Zielen der Nutzer.
- *Ermittlung der Nutzerbedürfnisse:* Interviews, Beobachtungen und Workshops zur Identifikation von Anforderungen.
- *Entwicklung von Prototypen:* Gestaltung und Testen von Designlösungen in Low-
#footnote[Low-Fidelity bedeutet, dass der Prototyp nur ein Minimum an visuellen Details und Funktionalität aufweist, aber genug Inhalt hat, um das Konzept mit anderen zu teilen.]
und High-Fidelity #footnote[High-Fidelity ist eine detaillierte Darstellung eines Produkts, die in Funktion, Aussehen, Verhalten oder Bewegung dem geplanten Endprodukt so nahe wie möglich kommt.].
- *Evaluierung:* Nutzerfeedback und Usability-Tests zur Optimierung der Lösung.

Ein zentraler Aspekt des HCD-Prozesses ist die systematische Darstellung der Nutzer und ihrer Anforderungen, um Designentscheidungen zu unterstützen. Hier kommen Werkzeuge wie zum Beispiel Personas, Benutzergruppenprofile und User Journey Maps zum Einsatz:

- *Personas:* Personas sind fiktive, datenbasierte Profile typischer Nutzer, die die wichtigsten Merkmale, Bedürfnisse und Ziele der Zielgruppe repräsentieren. Sie helfen, ein klares Bild der Zielgruppe zu entwickeln und unterstützen Designer dabei, nutzerzentrierte Lösungen zu gestalten.

- *Benutzergruppenprofile:* Diese Profile beschreiben spezifische Gruppen von Nutzern, die ähnliche Verhaltensmuster, Ziele und Herausforderungen teilen. Sie ergänzen Personas, indem sie breitere Trends und Gemeinsamkeiten zwischen den Nutzern aufzeigen und so die Segmentierung und Priorisierung der Anforderungen erleichtern.

- *User Journey Maps:* User Journey Maps visualisieren die Schritte, die Nutzer durchlaufen, um ein bestimmtes Ziel zu erreichen. Sie erfassen die Erfahrungen, Herausforderungen und Emotionen der Nutzer entlang ihres Weges. Dieses Werkzeug hilft, kritische Berührungspunkte zu identifizieren und Optimierungsmöglichkeiten aufzudecken.

Durch die Kombination dieser Werkzeuge wird ein umfassendes Verständnis der Nutzerperspektive geschaffen, das die Grundlage für effektive und benutzerfreundliche Designlösungen bildet.
Die frühzeitige Einbindung von HCD hilft, Designfehler zu vermeiden und die Nutzerakzeptanz zu steigern @farooquiImpactHumanCenteredDesign2019.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Analyse der Nutzerbedürfnisse

Die Analyse der Nutzerbedürfnisse ist ein zentraler Bestandteil des Designprozesses, um eine benutzerfreundliche und effektive Lösung für internationale Studierende in Deutschland zu entwickeln.
Im Vorfeld wurde der Prozess der Austauschstudierenden grob analysiert. Daraus haben sich zwei Benutzergruppenprofile ergeben: Austauschstudierende aus EU- und Nicht-EU-Ländern. Aufgrund der begrenzten Verfügbarkeit von Teilnehmenden konnten lediglich zwei Interviews durchgeführt werden, beide mit Studierenden aus dem Nicht-EU-Ausland. Diese Interviews wurden genutzt, um die Profile weiter zu verfeinern und Personas #footnote[@personas] zu entwickeln. Diese Personas dienen dazu, die Zielgruppe zu charakterisieren und die Anforderungen an den Prototyp gezielt zu definieren. Sie repräsentieren typische Nutzerprofile und helfen, die Designentscheidungen auf die Bedürfnisse der Zielgruppe auszurichten.

Der Hauptteil der Analyse basiert auf Interviews mit Austauschstudierenden, um die spezifischen Bedürfnisse, Herausforderungen und Ziele dieser Zielgruppe zu verstehen. Die folgenden Abschnitte fassen die wichtigsten Erkenntnisse aus diesen Analysen zusammen.

*Zielgruppe*

Die primäre Zielgruppe dieser Analyse umfasst vorrangig neue Austauschstudierende aus EU- und Nicht-EU-Ländern, da diese sich noch besonders gut an die vor kurzem durchlaufenden Prozesse erinnern.


*Schwerpunkte der Interviews*

Ein semistrukturierter Interviewleitfaden #footnote[@interviewguide] wurde entwickelt, um die Erfahrungen, Motivationen, Ziele und Herausforderungen der Austauschstudierenden zu erfassen. Dabei wurden sowohl bürokratische als auch persönliche Aspekte beleuchtet. Zu den thematisierten Bereichen gehörten unter anderem:

- Aktivitäten zur Vorbereitung und nach der Einreise in Deutschland
- Visa Prozess, Krankenversicherung, Wohnungssuche
- Persönliche Interessen und Ziele mit dem Auslandsstudium
- Kontext, Umstände und Umgebung, in denen Aktionen ausgeführt wurden
- Verbesserungsideen

Die Interviews wurden transkribiert #footnote[Vollständige Transkripte im @interviewtranscripts] und analysiert, um die wichtigsten Erkenntnisse zu identifizieren und die Bedürfnisse der Studierenden zu verstehen.

== Motivationen und Ziele der Studierenden <studentgoals>

Die Interviews mit den Austauschstudierenden haben eine Vielzahl von Motivationen und Zielen aufgezeigt, die ihre Entscheidung für ein Studium in Deutschland beeinflussen. Diese lassen sich wie folgt zusammenfassen:

- *Hochwertige Ausbildung:* Deutschland wird aufgrund seiner international anerkannten, qualitativ hochwertigen und zugleich erschwinglichen Ausbildung geschätzt.
- *Praxisorientierter Ansatz:* Deutsche Hochschulen bieten praxisnahe Lehrkonzepte, die von den Studierenden als Vorteil gegenüber rein theoretischen Ansätzen wahrgenommen werden.
- *Bessere Berufsaussichten:* Ein deutscher Abschluss gilt als Karrieresprungbrett, da er international hohe Anerkennung genießt und die Chancen auf dem Arbeitsmarkt verbessert.
- *Kultureller Austausch:* Viele Studierende sind motiviert, die deutsche Kultur kennenzulernen und Kontakte zu anderen internationalen Studierenden zu knüpfen.
- *Persönliche Weiterentwicklung:* Das Auslandsstudium wird als Möglichkeit gesehen, neue Erfahrungen zu sammeln und sich persönlich weiterzuentwickeln.
- *Reisen:* Die zentrale Lage Deutschlands in Europa bietet die Gelegenheit, während des Studiums andere europäische Länder zu bereisen.
- *Erfolgreicher Studienabschluss:* Im Mittelpunkt der Ziele steht für die meisten Studierenden der erfolgreiche Abschluss ihres Studiums.
- *Verbesserung der Sprachkenntnisse:* Viele Studierende streben an, ihre Deutschkenntnisse während ihres Aufenthalts zu vertiefen und somit ihre Integration und beruflichen Perspektiven zu fördern.

Diese Erkenntnisse stimmen mit den Ergebnissen aus der Literatur überein: Studienbezogene Gründe wie bessere Berufsaussichten, innovative Studienangebote und forschungsorientierte Lehrmethoden sind zentrale Entscheidungskriterien für ein Studium in Deutschland @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen. Ebenso tragen landesbezogene Faktoren wie die hohe Lebensqualität, Sicherheit und finanzielle Erschwinglichkeit dazu bei, dass Deutschland ein attraktives Ziel für Studierende weltweit ist.

== Herausforderungen und aktuelle Probleme der Studierenden <studentproblems>

Der Übergang in ein Studium in Deutschland ist für viele internationale Studierende mit zahlreichen Herausforderungen verbunden. Die Interviews haben gezeigt, dass Schwierigkeiten in verschiedenen Bereichen auftreten:

*Bewerbungsprozess:*
- Verzögerungen bei Rückmeldungen der Universitäten führen zu Unsicherheiten und Ängsten.
- Die Einreichung physischer Dokumente wird als unnötig umständlich und zeitaufwändig empfunden und ist mit der Sorge vor dem Verlust originaler Unterlagen verbunden.
- Der Bewerbungsprozess umfasst viele Schritte, Dokumente und erfordert einen erheblichen Zeitaufwand.
- Viele Studierende ziehen die Unterstützung durch Vermittler in Betracht, da der Prozess sehr kompliziert erscheint, sind jedoch aufgrund hoher Kosten und Vertrauensprobleme oft unsicher.

*Visaprozess:*
- Lange Bearbeitungszeiten und unklare Verzögerungen im Visumverfahren führen zu erheblichen Unsicherheiten und Planungsproblemen.
- Die Terminvergabe für Visaangelegenheiten gestaltet sich aufgrund begrenzter Visa-Slots schwierig, und bürokratische Hürden wie das neue APS-Verfahren erhöhen die Komplexität.
- Probleme entstehen, wenn das Visum an eine falsche oder frühere Hochschulzulassung gebunden ist.

*Unterkunft:*
- Die begrenzte Verfügbarkeit von Wohnheimplätzen macht die Wohnungssuche besonders herausfordernd.
- Die Verifizierung privater Wohnungsangebote aus dem Ausland ist oft schwierig, was die Gefahr von Betrug erhöht.

*Kulturelle und bürokratische Hürden:*
- Sprachbarrieren in Ämtern und im Alltag erschweren die Kommunikation, da Englisch oft nicht ausreichend unterstützt wird.
- Unübersichtliche und sich ändernde Vorschriften führen zu Verwirrung.
- Die soziale Integration bleibt herausfordernd, da der Austausch mit deutschen Kommiliton:innen oft begrenzt ist.

*Finanzielle Aspekte:*
- Hohe Vorauszahlungen für Vermittler, Visa und Unterkünfte stellen eine erhebliche finanzielle Herausforderung dar.
- Hohe Mindesteinzahlungen auf das Sperrkonto #footnote[Im Rahmen des Visumverfahrens dient ein Sperrkonto als Nachweis zur Lebensunterhaltsfinanzierung in Deutschland. (https://www.auswaertiges-amt.de/de/sperrkonto-375488)], sowie unflexible monatlichen Auszahlungen können in unvorhergesehenen Situationen zu finanziellen Engpässen führen.

*Orientierung und Information:*
- Viele Studierende fühlen sich nach der Ankunft orientierungslos und erhalten unzureichende Informationen über die nächsten Schritte.
- Prozesse und Zeitpläne sind oft unübersichtlich, was zu Unsicherheiten führt.

*Weitere Herausforderungen:*
- Die Anerkennung von Vorleistungen und Probleme bei der Konvertierung von ECTS-Punkten erschweren den akademischen Einstieg.
- Jobmöglichkeiten sind aufgrund von Visabestimmungen stark eingeschränkt.

Die genannten Herausforderungen decken sich mit Erkenntnissen aus Studien: Laut Beate Apolinarski & Tasso Brandt (2018) und Morris-Lange (2019) zählen Sprachbarrieren, finanzielle Einschränkungen, Schwierigkeiten bei der sozialen Integration sowie Orientierung im deutschen Studiensystem zu den häufigsten Problemen. Besonders die Wohnungssuche gestaltet sich problematisch – 47 % der Studierenden berichten von großen Schwierigkeiten, eine Unterkunft zu finden, während 34 % erhebliche Sprachprobleme angeben @beateapolinarskiAuslaendischeStudierendeDeutschland2018[S. 52; S. 64]. Auch bürokratische Prozesse, wie die Visa- und Anmeldeverfahren, und die Anerkennung von Vorleistungen gehören zu den häufigsten Hindernissen @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.

Diese Erkenntnisse zeigen, dass die Optimierung bürokratischer Prozesse und die Bereitstellung klarer Informationen entscheidend sind, um den Studierenden den Übergang zu erleichtern.

#pagebreak()
== Weitere Erkenntnisse aus der Analyse der Nutzerbedürfnisse <situation-improvemnent>

Die Analyse der Nutzerbedürfnisse hat zusätzliche Einblicke geliefert, die sowohl die genutzten Geräte als auch mögliche Verbesserungsideen betreffen:

*Verwendete Geräte:*
- Laptops und Desktop-PCs sind das bevorzugte Gerät für Recherchen, insbesondere bei komplexeren Aufgaben.
- Mobilgeräte dienen als Ergänzung für schnelle und unkomplizierte Recherchen unterwegs.


*Kontaktpunkte und Informationsquellen der Studierenden*
- Kontaktpersonen und Verantwortliche an der Heimuniversität
- Deutscher Akademischer Austauschdienst e.V. (DAAD)
- Uni-Assist
- Universitätsportale
- Websites wie mastersportal.com, studying-in-germany.org
- Webseite der Landeshauptstadt Dresden
- Persönliche Kontakte und WG-Mitbewohner
- Studentenorganisationen
- Vermittler

*Verbesserungsvorschläge:*

Auf Nachfrage wurden in den Interviews konkrete Verbesserungsvorschläge genannt, um die bürokratischen Prozesse für internationale Studierende zu erleichtern:

- *Optimierung des Visa-Prozesses:*
  - Regelmäßige Verfügbarkeit von Visum-Slots, um Wartezeiten zu minimieren.
  - Vereinfachte und klarere Prozesse für die Beantragung von Visa für Austauschstudenten, mit Fokus auf schnellere Bearbeitung und Terminvergabe.

- *Frühzeitige Zulassungsbenachrichtigungen:*
  - Universitäten sollten die Ergebnisse von Zulassungen oder Ablehnungen schneller bereitstellen, idealerweise innerhalb kürzerer Fristen (statt 2-3 Monate), um Studierenden mehr Zeit für die weiteren Schritte wie Visum, Unterkunft und Reisevorbereitungen zu geben.
#pagebreak()
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

In @userjourneyexcerpt ist ein Ausschnitt der User Journey Map dargestellt, welche auf Basis der Interviewergebnisse erstellt wurde. Sie zeigt wichtige Kontaktpunkte, typische Herausforderungen und die emotionalen Reaktionen der Studierenden während der verschiedenen Phasen. Ziel der User Journey ist es, kritische Berührungspunkte zu identifizieren und potenzielle Optimierungsmöglichkeiten aufzuzeigen.

#figure(
  image("images/User_Journey_Map_excerpt.png"),
  caption: [
    Auschnitt der User Journey Map
  ],
)<userjourneyexcerpt>


Der Ausschnitt zeigt zwei Schritte: die Wahl der Universität und die anschließende Bewerbung.
Dabei werden durchgeführte Aktionen und zentrale Kontaktpunkte, wie die Stabsstelle Internationales der HTW Dresden oder externe Webseiten, aufgeführt.
Zusätzlich bildet die User Journey auch die emotionalen Höhen und Tiefen der Studierenden ab: Während zu Beginn die Vorfreude auf das Auslandssemester überwiegt, führt die Fülle an Informationen und die Verteilung auf verschiedene Quellen häufig zu Überforderung während der Recherchephase.
Die vollständige User Journey Map befindet sich im @userjourney und visualisiert den gesamten Prozess der Austauschstudierenden bis zur Ankunft in Deutschland.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Ideal-Prozess Analyse

Die Analyse des Ideal-Prozesses bildet eine Grundlage, um die tatsächlichen Abläufe der Bürokratie für internationale Studierende zu verstehen und diese mit den wahrgenommenen Herausforderungen aus den Interviews abzugleichen. Aufgrund der zeitlichen Begrenzung dieser Arbeit war es nicht möglich, Interviews mit detaillierten Fragen zu allen Prozessschritten zu stellen. Deshalb, wurden der textuelle Prozesse auf der Website der Stabsstelle Internationales der HTW Dresden untersucht. Dadurch entstand eine wertvolle Vergleichsmöglichkeit zwischen dem ideal beschriebenen Ablauf und den subjektiven Erfahrungen der Studierenden.

*Ziel der Analyse*

Ein zentrales Ziel war es, den Prototyp zusätzlich zur Ausrichtung an den Bedürfnissen der Nutzer:innen, mit den konkreten Inhalten des bürokratischen Prozesses zu füllen. Nur durch eine Kombination beider Ansätze kann eine Lösung entwickelt werden, die sowohl benutzerfreundlich ist als auch die notwendigen Informationen und Schritte präzise abbildet. Außerdem ermöglicht ein mit Inhalt gefüllter Protyp eine realitätsnahe Evaluation und Optimierung, welche im HCD-Prozess essentiell ist.

*Extraktion des Ideal-Prozesses*

Der Prozess wurde zunächst aus den HTML#footnote[Die Hypertext Markup Language ist die Standardauszeichnungssprache für Dokumente, die in einem Webbrowser angezeigt werden sollen.]-Inhalten der Website extrahiert und im JSON-Format#footnote[JavaScript Object Notation ist ein offenes Standard-Dateiformat und Datenaustauschformat, das menschenlesbaren Text zur Speicherung und Übertragung von Datenobjekten verwendet, die aus Name-Wert-Paaren und Arrays bestehen.] dokumentiert.
Dieses Format wurde gewählt, da es strukturierte Daten ermöglicht, die flexibel angepasst werden können und als Grundlage für die Entwicklung des Prototyps dienen kann. Die JSON-Struktur enthält zentrale Elemente wie Phasen, die verschiedene Schritte umfassen, sowie spezifische Anforderungen, darunter erforderliche Dokumente mit Name und Beschreibung.
Der vollständige Prozess in der JSON-Strukur befindet sich im @jsonprocess.
Da dieser als Input für die App dient, erleichtert er auch zukünftige Anpassungen. Sollte sich der Prozess ändern, muss lediglich die JSON-Datei aktualisiert werden, ohne dass größere strukturelle Änderungen an der App notwendig sind.

#pagebreak()
*Grafischen Darstellung des Ideal-Prozesses*

Um den Prozess besser zu verstehen und zu analysieren, wurde zudem eine grafische Darstellung des Prozesses mit Hilfe des Tools Mermaid erstellt.
Ein Ausschnitt dieser ist in @mermaidprocess dargestellt.

#figure(
  image("images/Mermaid_process.png"),
  caption: [
    Auschnitt des Ideal-Prozesses in Mermaid-Darstellung
  ],
  outlined: false,
)<mermaidprocess>

#pagebreak()
@mermaidprocess zeigt klar die Verbindungen zwischen den einzelnen Schritten und die Reihenfolge der Aufgaben.
Dadurch bietet sie einen klaren Überblick über:
- *Schritte und Phasen des Prozesses*, wie z. B. „Antragstellung und Zulassung“ oder „Kursauswahl und Studienplanung“.
- *Abhängigkeiten zwischen den Schritten*, um kritische Pfade und Engpässe zu identifizieren.
- *Notwendige Dokumente und Fristen*, die für den Erfolg der einzelnen Schritte erforderlich sind.



Diese Visualisierung erwies sich als hilfreich, um:
- Engpässe im Prozess zu erkennen, wie z. B. dass lange Wartezeiten bei der Zulassung den gesamten Prozess verzögern, da beispielsweise das Visum davon abhängig ist.
- Verwendungspunkte der Dokumente zu identifizieren, da viele Dokumente in mehreren Phasen und Schritten benötigt werden.

*Erkenntnisse aus dem Austausch mit der Stabsstelle Internationales*

Zusätzlich zu der eigenständigen Anlayse des textuellen Prozesses wurde ein Gespräch mit der Stabsstelle Internationales geführt.
Dieses hat wertvolle Einblicke in die tatsächliche Organisation und Kommunikation der bürokratischen Abläufe für internationale Studierende geliefert. Die Stabstelle betonte, dass Studierende grundsätzlich selbst und proaktiv für die Erledigung der erforderlichen administrativen Schritte verantwortlich sind. Allerdings werden sie dabei aktiv durch die Stabsstelle unterstützt. Hierzu existiert ein fester Kommunikationsplan, in dem genau festgelegt ist, zu welchem Zeitpunkt welche E-Mails mit relevanten Informationen an die Studierenden versendet werden.

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

Bei der Entwicklung des Prototyps muss den Nutzungskontext der Zielgruppe berücksichtigen werden beschrieben. Da internationale Studierende sowohl mobile als auch Desktop-Geräte nutzen, vgl. @situation-improvemnent, sollte die Anwendung auf beiden Plattformen optimal funktionieren:

- *Mobile Nutzung:* Die App sollte responsiv und für die mobile Nutzung optimiert sein. Dies umfasst eine klare, reduzierte Darstellung von Informationen, die Möglichkeit, Sitzungen zu unterbrechen und später fortzusetzen, sowie eine intuitive Navigation.
- *Desktop-Nutzung:* Auf Desktop-Geräten sollte die Anwendung mehr Details und umfangreiche Funktionen bieten, wie z. B. die Möglichkeit, Dokumente hochzuladen oder längere Checklisten zu bearbeiten.

*Benutzerfreundlichkeit*

Die Anwendung sollte intuitiv und einfach zu bedienen sein, um die Akzeptanz und Nutzung durch die Studierenden zu maximieren. Dazu gehören:
- Klare, verständliche Sprache und visuelle Hierarchien.
- Minimierung von Klicks und Schritten, um Aufgaben zu erledigen.
- Barrierefreie Gestaltung, um auch Nutzer mit geringen Deutsch- oder Englischkenntnissen zu unterstützen.

//*Ziele der Anwendung*
//
//Die Entwicklung der App sollte folgende Ziele verfolgen, um den Studierenden bestmöglich zu helfen:
//1. *Schnelle und einfache Orientierung in Deutschland:* Unterstützung bei der Bewältigung bürokratischer Prozesse wie Visum, Krankenversicherung und Stadtregistrierung.
//2. *Einfacher Zugang zu relevanten Informationen und Ressourcen:* Bereitstellung von zentralisierten, leicht verständlichen Informationen zu Studienabläufen, Wohnungssuche und kulturellen Angeboten.
//3. *Austausch mit anderen Studierenden und Aufbau eines Netzwerks:* Förderung der sozialen Integration durch Vernetzungsmöglichkeiten.
//4. *Optimale Nutzung des Aufenthalts und des kulturellen Austauschs:* Unterstützung bei der Planung von Freizeitaktivitäten und Reisen innerhalb Deutschlands und Europas.

== Priorisierung der wichtigsten Features

Basierend auf den identifizierten Herausforderungen (@studentproblems) und den geäußerten Bedürfnissen der Studierenden wurden folgende Features als besonders wichtig eingestuft:

1. *Statusanzeige*
  - *Funktion:* Eine übersichtliche Darstellung des aktuellen Fortschritts und eine klarer Indikator zur Dringlichkeit von Terminen und offenen Aufgaben.
#pagebreak()
- *Vorteile:*
  - Schneller Überblick, ob Verzögerungen drohen oder alles im zeitlichen Rahmen liegt.
  - Echtzeit-Erinnerungen für Fristen und Termine, um Prokrastination und Versäumnisse zu vermeiden.
  // Ein langer Visaprozess ist nicht per se problematisch, sondern erst dann, wenn er den Studienstart verzögert. Daher ist es entscheidend, dass das Tool frühzeitig auf mögliche Verzögerungen hinweist und alternative Lösungen vorschlägt.
- *Relevanz:* Adressiert die Unsicherheit und Überforderung durch komplexe Prozesse, fehlendes Zeitgefüht und späte Rückmeldungen.

2. *Anpassung des Tools an die aktuelle Situation der Studierenden*
  - *Funktion:* Das Tool passt sich den individuellen Bedürfnissen der Studierenden an, indem es nur relevante Informationen und Schritte anzeigt.
  - *Vorteile:*
    - Vermeidung von Informationsüberflutung durch gezielte Filterung.
    - Berücksichtigung von Faktoren wie Herkunftsland (EU/Nicht-EU), Studiengang und persönlichen Interessen.
  - *Relevanz:* Erhöht die Benutzerfreundlichkeit und Effizienz, indem es den Fokus auf das Wesentliche lenkt.

3. *Zentrale Schritt-für-Schritt-Anleitungen und Dokumentenliste*
  - *Funktion:* Ein digitaler Kompass, der die Studierenden durch alle bürokratischen Prozesse führt, von der Bewerbung an der Universität bis zur Meldung im Bürgerbüro.
  - *Vorteile:*
    - Checklisten für jeden Schritt, angepasst an Herkunftsland und Studienziel.
    - Integrierte Vorlagen für Anträge und Links zu offiziellen Formularen.
  - *Relevanz:* Reduziert Fehler, spart Zeit und mindert Unsicherheit bei der Bewältigung bürokratischer Hürden.

*Begründung der Priorisierung*

Die gewählten Features adressieren die *kritischsten Problemstellen* aus den Interviews:
- *Bürokratie* (häufigste Beschwerde) wird durch klare Anleitungen und Terminmanagement entschärft.
- *Unsicherheit* (z. B. bei Fristen oder Dokumenten) wird durch die Statusanzeige und übersichtliche Schritt-für-Schritt-Anleitungen reduziert.
- *Informationsüberflutung* wird durch Personalisierung und gezielte Filterung vermieden.

Diese Features lassen sich ohne Prozessänderungen umsetzen, da sie als übergeordnete Hilfsmittel agieren. Sie ermöglichen es den Studierenden, eigenständiger zu handeln und sich auf ihre Kernziele aus @studentgoals zu konzentrieren, statt in Bürokratie zu versinken.
Eine vollständige Liste aller angedachten Features kann im @features eingesehen werden.

== Konzeption der einzelnen Features

*Anpassung des Tools an die aktuelle Situation der Studierenden*

Die zukünftige Anwendung ist nicht für jeden Nutzer gleich, sondern passt sich individuell an die Lebenslage #footnote[Eine Lebenslage bezeichnet eine Situation im Leben einer Person, die Bedürfnisse, Rechte oder Pflichten umfasst und eine Interaktion mit der Verwaltung erfordert.] der Studierenden an. Dies geschieht durch eine Selektion der Prozessschritte und Informationen auf Grundlage von Attributen wie Herkunftsland, Aufenthaltsdauer, Studienziel und Startdatum des Semesters. Dadurch kann die Anwendung die richtigen Informationen zum richtigen Zeitpunkt bereitstellen und unterstützt die Studierenden so effizient bei der Bewältigung ihrer Aufgaben.

Das korrekte Erfassen der Lebenslage ist essenziell, da sonst die falschen Informationen angezeigt werden. Beispielsweise benötigen Studierende aus dem Nicht-EU-Ausland detaillierte Informationen zu Visum und Krankenversicherung, während diese Informationen für EU-Studierende irrelevant wären. Durch diese maßgeschneiderte Bereitstellung relevanter Inhalte wird ein personalisiertes Nutzererlebnis geschaffen.

Fragen zur Konzeption:
- Welche Attribute müssen abgefragt werden, um die Lebenslage zu erfassen?
- Kann die Situation oder der Status dynamisch über vorhandene Dokumente verfolgt werden, ohne zusätzliches Zutun der Nutzer?

Um die Lebenslage der Studierenden individuell zu erfassen, werden verschiedene Angaben benötigt. Diese können beispielsweise duch ein Formular, wie in @protypelebenslage dargestellt, erfasst werden.

#figure(
  oasis-align(
    int-dir: -1,
    image("images/Prototyp_Pers_Informationen.png", width: 90%),
    image("images/Prototyp_Akt_Situation.png", width: 118%),
  ),
  caption: [
    Prototyp - Erfassung der Lebenslage
  ],
)<protypelebenslage>

Dazu gehören persönliche Daten wie der Name zur Personalisierung der Anwendung sowie das Herkunftsland, das über ein Dropdown-Menü mit Suchfunktion ausgewählt werden kann. Zudem sind Informationen zum geplanten Auslandssemester relevant, darunter die Art des Aufenthalts, die Aufenthaltsdauer, die darüber entscheidet, ob ein Visum erforderlich ist, sowie das Startdatum, das für die Berechnung wichtiger Ereignisse, wie Fristen für Visumanträge oder Wohnungssuche genutzt wird. Weitere notwendige Angaben umfassen das Startsemester, beispielsweise das Wintersemester, und den Studiengang in Dresden. Der Entwurf dieses Formulars ist in @protypelebenslage (links) dargestellt.

Darüber hinaus wird in @protypelebenslage (rechts) die aktuelle Situation der Studierenden erfasst. Dazu gehört die Angabe der aktuellen Phase ihres Aufenthalts, also ob sie sich vor, während oder nach dem Studienbeginn befinden. Innerhalb dieser Phasen können Studierende schon einige Schritte wie die Einreichung der Bewerbung oder die Beantragung eines Visums durchgeführt haben. Ergänzend dazu werden die bereits vorliegenden Dokumente abgefragt, darunter das (Online) Learning Agreement, der Zulassungsbescheid etc. Anhand der bereits durchgeführten Schritte und der vorhandenen Dokumente lässt sich die Lebenslage präzise bestimmen. So wird sichergestellt, dass die Anwendung stets auf die individuelle Situation der Studierenden zugeschnittene Informationen und Unterstützung bereitstellt.

Im weiteren Verlauf soll die Lebenslage durch die abgeschlossenen Schritte und die erhaltenen Dokumente weiterverfolgt werden.

\
*Statusanzeige*

Um Studierenden eine klare Orientierung über ihren Fortschritt im gesamten Prozess zu ermöglichen, bietet die Anwendung eine Statusanzeige mit mehreren Elementen. Diese erlaubt es den Nutzern, sich jederzeit über ihren aktuellen Stand zu informieren und offene Aufgaben frühzeitig zu erkennen.

Die Statusanzeige umfasst verschiedene visuelle Elemente, welche in @protypelebensstatus dargestellt sind.

#figure(
  grid(
    columns: (3fr, 4fr),
    image("images/Prototyp_Fortschrittsbalken_Ampel.png"),
    image("images/Prototyp_Kanban.png", width: 94%),
  ),
  caption: [
    Prototyp - Statusanzeige
  ],
)<protypelebensstatus>

\
- *Fortschrittsbalken*: Zeigen den aktuellen Stand innerhalb der jeweiligen Phase an und ermöglichen eine schnelle Einschätzung der verbleibenden Schritte, prototypisch dargestellt in @protypelebensstatus (links oben).
- *Ampelsystem (rot, gelb, grün)*: Gibt eine sofort verständliche Rückmeldung über den Gesamtstatus und warnt bei drohenden Verzögerungen. Warnungen können beispielsweise bei Fristen für Visumanträge oder Einschreibungen helfen, siehe @protypelebensstatus (links unten).
- *Kanban-Board*: Bietet eine strukturierte Übersicht über alle Phasen und zeigt farblich markiert die aktuelle Phase sowie bereits abgeschlossene und noch ausstehende Schritte, dargestellt in @protypelebensstatus (rechts).

Durch diese unterschiedlichen Darstellungsformen wird die Komplexität des Prozesses reduziert, und Studierende können sich gezielt auf ihre nächsten Aufgaben konzentrieren.

\
*Zentrale Schritt-für-Schritt-Anleitungen und Dokumentenlisten*

Um die Komplexität des Verwaltungsprozesses weiter zu reduzieren, bietet die Anwendung strukturierte Schritt-für-Schritt-Anleitungen und eine zentrale Dokumentenverwaltung. Diese Funktionen erleichtern es den Studierenden, sich auf die wesentlichen Aufgaben zu konzentrieren und notwendige Dokumente griffbereit zu haben.
Der Entwurf für diese Funktionen ist in @prototypestepsdocs abgebildet.

#figure(
  image("images/Prototyp_Schritte_Dokumente.png", height: 40%),
  caption: [
    Prototyp - Dokumentenliste und nächste Schritte
  ],
)<prototypestepsdocs>

\
Folgende Elemente sind enthalten:
- *Schritt-für-Schritt-Anleitungen*: Die Studierenden erhalten eine dynamische Übersicht über die nächsten Schritte, wobei jeweils nur die für ihre aktuelle Situation relevanten Aufgaben angezeigt werden. So wird vermieden, dass Nutzer mit irrelevanten Informationen überflutet werden, dargestellt in @prototypestepsdocs (unten).
- *Dokumentenlisten*: Eine zentrale Verwaltung der bereits hochgeladenen oder erhaltenen Dokumente ermöglicht es, diese bei weiteren Schritten direkt zu verwenden. So kann beispielsweise ein bereits hochgeladenes Visum-Dokument automatisch für die nächste Phase berücksichtigt werden, siehe (@prototypestepsdocs (mitte)).
- *Hinweise bei Wartezeiten*: Falls Studierende auf bestimmte Dokumente warten müssen (z. B. Zulassungsbescheid oder Visum), gibt die Anwendung eine Einschätzung zur erwarteten Bearbeitungsdauer und informiert darüber, wenn Verzögerungen auftreten könnten, dargestellt in @prototypestepsdocs (unten) .

Diese strukturierten Anleitungen und Dokumentenlisten helfen, Unsicherheiten zu reduzieren und den Prozess klarer zu gestalten.

\
Zur besseren Übersicht von Abhängigkeiten und Zeitplanung dient @prototypecalendargraph:

#figure(
  grid(
    columns: (7fr, 9fr),
    image("images/Prototyp_Kalender.png"),
    image("images/Prototyp_Graph.png", width: 80%),
  ),
  caption: [
    Prototyp - Kalender und Graph
  ],
)<prototypecalendargraph>

- *Kalenderansicht*: Diese zeigt alle relevanten Fristen, Termine und Meilensteine übersichtlich an. So behalten Studierende ihre Deadlines im Blick und können sich frühzeitig auf kommende Aufgaben vorbereiten. In @prototypecalendargraph (links) dargestellt.
- *Graphenansicht*: Die Abhängigkeiten zwischen einzelnen Schritten werden visualisiert, um Studierenden ein besseres Verständnis für den gesamten Prozess zu ermöglichen. Dies hilft insbesondere bei komplexen Prozessen mit mehreren Abhängigkeiten, wie z. B. dem Zusammenspiel zwischen Visumsantrag und Immatrikulation. In @prototypecalendargraph (rechts) dargestellt.

Grafiken zu vollständigen Oberflächen des Prototyps sind im @prototype zu finden.

// ###############################################################################
// ###############################################################################
// ###############################################################################
// ###############################################################################

= Diskussion und Ausblick

*Zusammenfassung der Ergebnisse*

Der entwickelte Prototyp adressiert gezielt die zentralen Herausforderungen, mit denen ausländische Studierende im bürokratischen Prozess konfrontiert sind.
Durch die Kombination aus personalisierten Informationen, zentraler Statusanzeige und klar strukturierten Schritt-für-Schritt Anleitungen werden Studierende gezielt durch die erforderlichen administrativen Schritte geleitet. Der Ansatz stellt sicher, dass die relevanten Informationen zur richtigen Zeit bereitgestellt werden und reduziert somit Unsicherheiten sowie mögliche Verzögerungen.

*Validierung und Iterationen*

Die Wirksamkeit der entworfenen Funktionen und des Designs muss durch umfassendes Nutzerfeedback überprüft werden. Erst durch eine iterative Weiterentwicklung können potenzielle Schwachstellen identifiziert und behoben werden. Geplante Maßnahmen zur Validierung umfassen Nutzertests mit internationalen Studierenden, Interviews mit Verwaltungsmitarbeitenden sowie die Analyse realer Nutzungsdaten, um die Benutzerfreundlichkeit und Effektivität des Systems weiter zu optimieren.

*Validierung des Ideal-Prozesses*

Ein entscheidender nächster Schritt ist die Überprüfung der abgeleiteten Prozessstruktur durch die Stabsstelle Internationales, um sicherzustellen, dass alle erforderlichen Daten korrekt erfasst und verarbeitet werden.

*Potenzial und Übertragbarkeit*

Der entwickelte Ansatz lässt sich auf weitere Hochschulen übertragen, wobei lokale Verwaltungsstrukturen und spezifische Regelungen berücksichtigt werden müssen. Langfristig könnte das System als Standardlösung für digitalisierte Verwaltungsprozesse an Hochschulen etabliert werden. Neben der Unterstützung internationaler Studierender kann der Prototyp auch die bürokratischen Abläufe für ausländische Fachkräfte optimieren. Durch eine interaktive und strukturierte Anleitung würden neue Mitarbeitende in Deutschland effizient durch Visa-, Melde- und Anerkennungsverfahren geführt.

//*Ausblick*
//
//Dabei spielen insbesondere die folgenden Aspekte eine wichtige Rolle:
//- *Integration in bestehende Hochschulsysteme*: Anbindung an Portale für Studierende, Austausch mit Verwaltungssystemen und Automatisierung von Prozessen.
//- *Optimierung der Nutzerführung*: Weiterentwicklung der Benutzeroberfläche basierend auf Usability-Tests.
//- *Erweiterung der Funktionalitäten*: Mögliche Erweiterungen umfassen eine dynamische Anpassung des Unterstützungsgrads, basierend auf dem individuellen Informationsbedarf, sowie eine detailliertere Zeitplanung für Studierende.

*Fazit*

Der Prototyp zeigt, dass eine nutzerzentrierte Verwaltungsanwendung einen erheblichen Beitrag zur Reduzierung bürokratischer Hürden für ausländische Studierende leisten könnte. Er bietet eine strukturierte Unterstützung bei der Durchführung administrativer Prozesse und trägt dazu bei, Unsicherheiten zu reduzieren und den Studierenden eine bessere Orientierung zu ermöglichen.

Dabei bleibt die zentrale Frage bestehen, ob es sich lediglich um eine Symptombehandlung handelt oder ob langfristig auch eine Optimierung der zugrundeliegenden Prozesse angestrebt werden sollte. Während die Anwendung den Studierenden hilft, sich effizient durch den bestehenden Prozess zu navigieren, könnte eine weitergehende Vernetzung der Behörden und eine Verkürzung von Antwortzeiten zusätzliche Effekte erzielen.

Letztlich bleibt zu diskutieren, inwiefern der Prototyp auch für andere Hochschulen oder Städte adaptiert werden kann und ob er eine breitere Anwendung in der Vereinfachung bürokratischer Prozesse für ausländische Studierende finden könnte.

Zukünftige Arbeiten könnten sich auf die Validierung des entwickelten Prototyps sowie auf die technische Implementierung konzentrieren.