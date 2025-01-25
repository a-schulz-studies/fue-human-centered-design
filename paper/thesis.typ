#import "common/titlepage.typ": *
#import "common/metadata.typ": *
#import "style/style.typ": *

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

// Auf ein Glossar kann verzichtet werden, wenn die wenigen Begriffe in den Fußnoten erklärt werden.
// = Glossar

// - *Proaktive Dienstleistungen:* Verwaltungshandlungen sollen möglichst frühzeitig und automatisiert angeboten werden, um Studierende zu unterstützen.
// - *Lebenslagen:* Personalisierung von Dienstleistungen basierend auf der individuellen Situation der Nutzer.

= Einleitung

*Hintergrund und Motivation*

Austauschstudierende in Deutschland stehen oft vor komplexen bürokratischen Prozessen. Sie möchten sich in erster Linie auf ihre akademische Ausbildung konzentrieren und möglichst wenig Zeit mit administrativen Aufgaben verbringen. Verzögerungen oder Fehler im Prozess können jedoch dazu führen, dass der Studienstart verschoben wird oder zusätzliche Herausforderungen entstehen. Gründe für ein Studium in Deutschland sind unter anderem die hohe Qualität der Ausbildung, attraktive Studiengänge und internationale Anerkennung. #highlight[Quellen]

*Problemstellung*
Studierende sind häufig mit den bürokratischen Prozessen in Deutschland #highlight[überfordert] und schaffen es nicht immer, diese rechtzeitig abzuschließen. Dies führt zu Verzögerungen beim Studienstart und erschwert ihre Integration. Insbesondere fehlende Rückmeldefristen und Schwierigkeiten bei der Wohnungssuche führen zu Frust im Prozess.

*Zielsetzung*
Ziel ist die Entwicklung eines Prototyps, der ausländische Studierende bei bürokratischen Prozessen unterstützt, diese vereinfacht. Der Prototyp soll auf die Bedürfnisse der Studierenden ausgerichtet sein und durch klare Anleitungen, Feedback und Unterstützung eine rechtzeitige Durchführung der Prozesse ermöglichen.

*Forschungsfrage*
"Wie kann ein Prototyp gestaltet werden, der ausländische Studierende bei den bürokratischen Prozessen in Deutschland unterstützt?"

*Vorgehensweise*
Die Arbeit basiert auf der Methode des Human-Centered Design (HCD), um die Bedürfnisse der Zielgruppe zu analysieren und schrittweise Lösungen zu entwickeln. Nutzerfeedback spielt dabei eine zentrale Rolle, um den Prototyp iterativ zu verbessern.

= Methode des Human-Centered Design (HCD)

*Human-Centered Design (HCD)*
Human-Centered Design ist ein nutzerzentrierter Ansatz, der den Menschen und seine Bedürfnisse in den Mittelpunkt stellt. Die Prinzipien von HCD umfassen:
- *Fokus auf Menschen:* Lösungen basieren auf Nutzerbedürfnissen und -fähigkeiten.
- *Partizipation:* Nutzer*innen gestalten aktiv mit, Feedback ist zentral.
- *Iterativer Ansatz:* Beobachten, Entwickeln, Testen und Verbessern in Zyklen.
- *Kontext:* Soziale, kulturelle und technische Faktoren werden berücksichtigt.

Im Vergleich zu User-Centered Design (UCD) legt HCD einen stärkeren Fokus auf die sozialen und kulturellen Aspekte des Designs und auf die langfristige Einbindung der Nutzer.
#highlight[Personalisierung der Anwendung?]

= Analyse der Nutzerbedürfnisse

*Personas:* Personas wurden erstellt, um die unterschiedlichen Bedürfnisse und Herausforderungen der Studierenden zu repräsentieren. Diese unterstützen die Entwicklung eines Prototyps, der auf spezifische Nutzergruppen eingeht.

Zu Analyse der Nutzerbedürfnisse werden im Rahmen des HCD Interviews mit Austauschstudierenden durchgeführt, um ihre Herausforderungen, Motivationen und Ziele besser zu verstehen. Dadurch können gezielt Nachfragen zu den Problemen und aktuellen Hürden gestellt und erläutert werden.

*Zielgruppe*
Die Zielgruppe umfasst neue Austauschstudierende an der HTW Dresden, da diese sich noch besonders gut an die vor kurzem durchlaufenden Prozesse erinnern.

*Schwerpunkte der Interviews*
Ein semistrukturierter Interviewleitfaden wurde verwendet, die besprochenen Themen waren unter anderem:
#highlight[Fragen nicht nur auf die bürokratischen Prozesse abzielten, sondern auch auf die Motivationen, Ziele und persönlichen Interessen]

- Aktivitäten zur Vorbereitung
- Visa Prozess
- Krankenversicherung
- Wohnungssuche
- Aktivitäten nach der Ankunft

*Ergebnisse*
- *Pain Points:* Häufige Probleme sind lange Bearbeitungszeiten, fehlende Rückmeldungen und Unsicherheiten im Prozess. 
- *Motivationen und Ziele:* Studierende möchten sich auf ihr Studium konzentrieren und eine hochwertige und international anerkannte Ausbildung genießen.
- Kontaktpunkte und Informationsquellen
- Herausforderungen und Probleme
- verwendete Geräte
- Umstände / Umgebung (mobile Recherche, Desktop)

*User Journey*
Aus den Erkenntnissen der Interviews wurde eine User Journey abgeleitet. Die User Journey dokumentiert Kontaktpunkte und Herausforderungen während des Prozesses. Sie wird vollständig im Anhang bereitgestellt. Mithilfe der User Journey ist es möglich die Emotionen und die Situation der Nutzer zu bestimmten Zeiten und bei bestimmten Aktionen nachzuvollziehen und dadurch geeignete Maßnahmen abzuleiten.
#highlight[Verweis auf den Anhang, Bild einfügen?]

*Herausforderungen und aktuelle Probleme*

- *Abhängigkeiten:* Prozesse wie die Visabeantragung sind stark von der Zulassung abhängig und können auch nicht vorher begonnen werden.
- *Keine Rückmeldungen:* Universitäten antworten oft nicht rechtzeitig und geben keine Informationen darüber, wie lange auf eine Antwort gewartet werden muss.
- *Kritischer Pfad:* Prozesse wie das Visum sind zeitkritisch und beeinflussen andere Aufgaben. Ein verspätetes Durchführen von bestimmten Prozessen führt fast ausschließlich zu einem verspäteten Studienstart.
- *Orientierungslosigkeit:* Studierende wissen oft nicht, wie gut sie im Zeitplan sind.
- *Wohnungssuche:* Schwierigkeit, seriöse Angebote zu finden.
#highlight[Siehe Interview Output]

*Verbesserungsideen*

#highlight[Siehe Interview Output]

- *Indikatoren:* Fortschrittsbalken und Ampelsystem zur Anzeige des Status.
- *Prozessbegleitung:* Schritt-für-Schritt-Anleitungen mit Erinnerungen.
- *Dokumentenverwaltung:* Zentralisierte Verwaltung und einfache Einreichung.
- *Mehrsprachigkeit:* Unterstützung in Englisch und Deutsch.

= Ist-Prozess Analyse

Die Prozesse wurden mithilfe von Process Mining analysiert, um Engpässe, Abhängigkeiten und notwendige Dokuemnte zu identifizieren. Ein Knowledge Graph wurde erstellt, um die Verbindungen zwischen einzelnen Schritten zu visualisieren.

Der extrahierte und strukturierte Prozess sollte gleichzeitig als Input für die Anwendung verwendet werden, damit diese noch im zeitlichen Rahmen mit den Interviewpartnern evaluiert werden kann.

#highlight[Kann ich diesen Punkt noch mit zu einem anderden zusammenfassen?]

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

*Erfassung der Lebenslage*
Die Lebenslage muss einmalig über Eingabe in ein Formular erfasst werden. Im Verlauf soll diese durch die abgeschlossenen Schritte und die erhaltenen Dokumenete weiterverfolgt werden. Das korrekte Erfassen der Lebenslage ist essentiell, da sonst die falschen Informationen angezeigt werden. Beispielweise benötigen Studierende aus dem EU-Ausland weitere Informationen zu Visum und Krankenversicherung während diese Informationen für EU-Studierende obsolet wären.

Dadurch wird ein personalisiertes Erlebnis geschafft. Bereitstellen der richtigen Informationen zum richtigen Zeipunkt.

*Low-Fidelity Prototyp*
Erste Designs wurden in Miro entwickelt. Diese enthalten Wireframes und einfache Abläufe.

Wie unterstützt welche Ansicht den Studenten

Kalenderansicht
Graphenansicht

Sind einfacher zu verstehen als ein riesiger Text.

#highlight[Einfügen einiger Screenshots des finalen Wireframes]

= Diskussion und Ausblick

*Zusammenfassung der Ergebnisse*
Der Prototyp adressiert die Pain Points der Studierenden und bietet personalisierte, proaktive Unterstützung. 

*Validierung und Iterationen*
Die Funktionen und das Design müssen durch Nutzerfeedback validiert und iterativ verbessert werden.

*Potenzial*
Der Prototyp könnte die Grundlage für die Entwicklung proaktiver Verwaltungsdienstleistungen bilden und auf andere Hochschulen übertragen werden.

*Ausblick*
Zukünftige Arbeiten umfassen die technische Implementierung, Validierung und Vernetzung mit Behörden sowie die Anpassung der unterstützenden Prozesse.

*Weitere Features der Anwendung*
- Anpassung des Unterstützungsgrads
- Sammeln von weiterem Feedback durch so eine App
- Ermitteln von Prozesszeiten durch Nutzerdaten

= Fazit
Ein nutzerzentrierter Prototyp kann die bürokratischen Hürden für ausländische Studierende in Deutschland erheblich reduzieren.

Symptombehandlung oder Ursachenforschung:
- Anwendung hilft bei der Durchführung des Prozesses
- Anpassungen am Prozess (Antwortzeiten, Vernetzung
der Behörden)

Übertragbarkeit: Diskutieren Sie, inwiefern der Prototyp auch für andere Hochschulen oder Städte genutzt werden könnte

der Prototyp einen Beitrag zur Vereinfachung der bürokratischen Prozesse für ausländische Studierende leisten kann.