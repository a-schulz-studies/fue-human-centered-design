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
int-dir:-1,
[Der HCD-Prozess ist iterativ und umfasst folgende Phasen @farooquiImpactHumanCenteredDesign2019:
 - *Planung:* Definition von Zielen und Einbindung der Stakeholder.
 - *Analyse des Nutzungskontexts:* Untersuchung von Aufgaben, Umgebung und Zielen der Nutzer.
 - *Ermittlung der Nutzerbedürfnisse:* Interviews, Beobachtungen und Workshops zur Identifikation von Anforderungen.
 - *Entwicklung von Prototypen:* Gestaltung und Testen von Designlösungen in Low-
 #footnote[Low-Fidelity bedeutet, dass der Prototyp nur ein Minimum an visuellen Details und Funktionalität aufweist, aber genug Inhalt hat, um das Konzept mit anderen zu teilen.]
  und High-Fidelity #footnote[High-Fidelity ist eine detaillierte Darstellung eines Produkts, die in Funktion, Aussehen, Verhalten oder Bewegung dem geplanten Endprodukt so nahe wie möglich kommt.].
 - *Evaluierung:* Nutzerfeedback und Usability-Tests zur Optimierung der Lösung.],
  figure(image("images/HCD-Prozess.png", width: 95%),
  caption: [
    HCD-Prozess nach Farooqui et al. 2019
  ],
))

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
Im Vorfeld wurde der Prozess der Austauschstudierenden grob analysiert. Daraus haben sich zwei Benutzergruppenprofile ergeben: Austauschstudierende aus EU und Nicht-EU Ländern. Diese Profile wurden durch Interviews mit Austauschstudierenden weiter verfeinert, um die spezifischen Bedürfnisse, Herausforderungen und Ziele der Nutzer zu verstehen.
Zusätzlich wurden Personas erstellt, um die Zielgruppe zu charakterisieren und die Anforderungen an den Prototyp zu konkretisieren. Die Personas repräsentieren typische Nutzerprofile und helfen, die Designentscheidungen auf die Bedürfnisse der Zielgruppe auszurichten.

Der Hauptteil der Analyse basiert auf Interviews mit Austauschstudierenden, um die spezifischen Bedürfnisse, Herausforderungen und Ziele dieser Zielgruppe zu verstehen. Die folgenden Abschnitte fassen die wichtigsten Erkenntnisse aus diesen Analysen zusammen und strukturieren diese für einen klaren Überblick.

*Zielgruppe*

Die primäre Zielgruppe dieser Analyse umfasst vorrangig neue Austauschstudierende Austauschstudierende aus EU- und Nicht-EU-Ländern, da diese sich noch besonders gut an die vor kurzem durchlaufenden Prozesse erinnern.


*Schwerpunkte der Interviews*

Ein semistrukturierter Interviewleitfaden wurde entwickelt, um die Erfahrungen, Motivationen, Ziele und Herausforderungen der Austauschstudierenden umfassend zu erfassen. Dabei wurden sowohl bürokratische als auch persönliche Aspekte beleuchtet. Zu den thematisierten Bereichen gehörten:

- Aktivitäten zur Vorbereitung
- Visa Prozess
- Krankenversicherung
- Wohnungssuche
- Aktivitäten nach der Ankunft
- Persönliche Interessen und Ziele mit dem Auslandsstudium
- Umstände und Umgebung während den Schritten
- Verbesserungsideen

*Ergebnisse*
- *Motivationen und Ziele:* Studierende möchten sich auf ihr Studium konzentrieren und eine hochwertige und international anerkannte Ausbildung genießen.
- Kontaktpunkte und Informationsquellen
- Herausforderungen und Probleme
- verwendete Geräte
- Umstände / Umgebung (mobile Recherche, Desktop)

Während studienbezogene Gründe wie bessere Berufschancen, interessante Studienangebote und forschungsorientierte Lehrformen eine zentrale Rolle bei der Entscheidung für ein Studium in Deutschland spielen, tragen auch landesbezogene Aspekte wie die hohe Lebensqualität und finanzielle Erschwinglichkeit dazu bei. Jedoch variieren die Beweggründe und Schwierigkeiten stark je nach Herkunftsregion und finanziellen Möglichkeiten der Studierenden. Diese Herausforderungen beeinträchtigen nicht nur den Studienerfolg, sondern erschweren auch die soziale und kulturelle Integration @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.


*Herausforderungen und aktuelle Probleme*
- *Pain Points:* Häufige Probleme sind lange Bearbeitungszeiten, fehlende Rückmeldungen und Unsicherheiten im Prozess.

- *Abhängigkeiten:* Prozesse wie die Visabeantragung sind stark von der Zulassung abhängig und können auch nicht vorher begonnen werden.
- *Keine Rückmeldungen:* Universitäten antworten oft nicht rechtzeitig und geben keine Informationen darüber, wie lange auf eine Antwort gewartet werden muss.
- *Kritischer Pfad:* Prozesse wie das Visum sind zeitkritisch und beeinflussen andere Aufgaben. Ein verspätetes Durchführen von bestimmten Prozessen führt fast ausschließlich zu einem verspäteten Studienstart.
- *Orientierungslosigkeit:* Studierende wissen oft nicht, wie gut sie im Zeitplan sind.
- *Wohnungssuche:* Schwierigkeit, seriöse Angebote zu finden.
#highlight[Siehe Interview Output]

Zu den häufigsten Herausforderungen zählen die Wohnungssuche, Sprachbarrieren, finanzielle Einschränkungen, Schwierigkeiten bei der sozialen Integration sowie die Orientierung im deutschen Studiensystem. Beispielsweise haben 47 % der ausländischen Studierenden große Probleme, eine passende Unterkunft zu finden, und 34 % kämpfen mit erheblichen Sprachproblemen. Auch die Anerkennung von Vorleistungen sowie bürokratische Prozesse wie Visa- und Anmeldeverfahren erschweren den Studierenden den Einstieg in das Studium @beateapolinarskiAuslaendischeStudierendeDeutschland2018 @morris2019demografischen.


*Verbesserungsideen*

#highlight[Siehe Interview Output]

- *Indikatoren:* Fortschrittsbalken und Ampelsystem zur Anzeige des Status.
- *Prozessbegleitung:* Schritt-für-Schritt-Anleitungen mit Erinnerungen.
- *Dokumentenverwaltung:* Zentralisierte Verwaltung und einfache Einreichung.
- *Mehrsprachigkeit:* Unterstützung in Englisch und Deutsch.

#highlight[Es wurden gesamt nur 2 Interviews mit Studierenden aus der Nicht-EU durchgeführt.]

*User Journey*
Aus den Erkenntnissen der Interviews wurde eine User Journey abgeleitet. Die User Journey dient zur Visualisierung der Kontaktpunkte und Herausforderungen der Studierenden während des gesamten Prozesses. Dies ermöglichte es, die Emotionen und Situationen der Nutzer in bestimmten Phasen nachzuvollziehen und dadurch geeignete Maßnahmen abzuleiten. Sie wird vollständig im Anhang bereitgestellt. #highlight[Verweis auf den Anhang -> Link]

#highlight[Ausschnitt einer Phase mit Erklärung zu den Inhalten aus der User Journey]


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