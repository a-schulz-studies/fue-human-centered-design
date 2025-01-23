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
Austauschstudierende wollen sich nicht großartig mit den bürokratischen Prozessen in Detschland beschäftigen.
Am liebsten hätten sie so wenig Kontakt wie möglich mit den Behörden.
Sie wollen nur eine sehr gute Ausbildung hier in Deutschland haben.
// Suche Quelle mit Gründen für ein Studium in Deutschland

Bürokratische Prozesse sollten keine Hürde sein.
Analyse der bürokratische Hürden für Austauschstudenten in Dresden

Problemstellung: Studierende sind häufig mit den bürokratischen Prozessen in Deutschland überfordert und schaffen es nicht immer diese in der geplanten Zeit durchzuführen, weshalb sich dann der Start des Studiums verzögert.
im Detail müssen dafür erstmal die Prozesse verstanden werden, die konkreten Herausforderungen und die Pain Points identifiziert werden


Ziel der Arbeit: Entwicklung eines Prototyps zur Unterstützung für ausländische Studierende bei den administrativen/bürokratischen Prozessen.
Prototypen zu entwickeln, der diese Herausforderungen adressiert und den Studierenden hilft, sich in Deutschland besser zurechtzufinden

Forschungsfrage: "Wie könnte ein Prototyp aussehen, der ausländische Studierende bei den bürokratischen Prozessen in Deutschland unterstützt?"

Um für die Studierenden eine möglichst gute Lösung zu entwickeln wird die Methode des Human Centered Design verwendet.

= Theoretische Grundlagen

Human-Centered Design (HCD): Erläuterung des HCD-Ansatzes und seiner Bedeutung für die Entwicklung des Prototyps.
Unterschied zwischen HCD und User-Centered Design (UCD).
Die Bedeutung der Einbeziehung der Nutzer in den Designprozess und deren Bedürfnisse.
Was ist Human-centered design?
Fokus auf Menschen:
Lösungen basieren auf Nutzerbedürfnissen und -fähigkeiten
Partizipation:
Nutzerinnen gestalten aktiv mit; Feedback ist zentral
Iterativer Ansatz:
Beobachten, Entwickeln, Testen, Verbessern
Kontext:
Kulturelle und technische Faktoren zählen

Relevante Konzepte:
Proaktive Dienstleistungen im Kontext der öffentlichen Verwaltung.
Bedeutung der Bereitstellung von Informationen zur richtigen Zeit und am richtigen Ort.
Lebenslagen und deren Bedeutung für die Personalisierung von Dienstleistungen.
Bestehende Angebote und Forschung: Analyse von bestehenden Unterstützungsangeboten (z.B. Welcome Center Dresden, Entdecker App Leipzig) und deren Vor- und Nachteile.

Human centered design (nicht im Detail erklären sondern eher auf andere verweisen)

Interviews und weitere Nachfragen als teil des HCD Prozesses
Informationen von der Stabsstelle Internationales -> Prozessverständnis Ist-Prozess-Analyse


= Analyse der Nutzerbedürfnisse

Zielgruppe: Neue Austauschstudenten an der HTWD

Interviews: Detaillierte Beschreibung der durchgeführten Interviews mit ausländischen Studierenden und die dabei gewonnenen Erkenntnisse
Interviewleitfaden und verwendete Fragen
Identifizierung von Pain Points: Zusammenfassung der häufigsten Probleme und Herausforderungen, die von den Studierenden genannt wurden

Motivationen und Ziele: Darstellung der Motivationen und Ziele der Studierenden, die eine wesentliche Grundlage für die Gestaltung des Prototyps sind
Erstellung von Personas (sollte ich die Personas mit rein bringen)
- welchen Nutzen bringen die Personas für die Entwicklung des Prototyps
User Journey -> Miro Board (ganz oder teilweise .... in den Anhang?)


Besprochene Themen:
- Aktivitäten zur Vorbereitung
- Visa Prozess
- Krankenversicherung
- Wohnungssuche
- Aktivitäten nach der Ankunft
Ergebnisse:
- Kontaktpunkte und Informationsquellen
- Herausforderungen und Probleme
- verwendete Geräte
- Umstände / Umgebung (mobile Recherche, Desktop)
=> User journey


== Herausforderungen und aktuelle Probleme

Abhängigkeit im Prozess
keine Rückmeldung/Antwortzeiten
kritischer Pfad
kein Gefühl wie und wo man im Prozess steht und ob alles zeitlich noch gut passt
schwierigkeiten bei der Wohnungsuche seriöse Angebote zu finden


== Verbesserungsideen

siehe Interview Output/Followup Questions

== Wichtigste Punkte -> Kein Gefühl, wie gut man im Prozess steht
Es ist egal, ob der Visaprozess lang dauert, solange man trotzdem pünklich mit dem Studium beginnen kann
= Analyse des Ist-Prozesses laut der Stabstelle

Process Mining / Knowledge Graph




= Konzeption und Design des Prototyps

Erfassung der Lebenslage
Welche Informationen sind notwendig, um ein personalisiertes Erlebnis zu schaﬀen?
Bereitstellen der richtigen Informationen zum richtigen Zeitpunkt.

wie unterstützt welche Ansicht den Studenten
Funktionen und Features:
Beschreibung der wichtigsten Funktionen des Prototyps, basierend auf den Ergebnissen der Nutzerbedarfsanalyse
Priorisierung der Features nach Wichtigkeit für die Studierenden
Wichtige Funktionen wie eine Dokumenten-Checkliste, Erinnerungsfunktion für Deadlines, mehrsprachige Unterstützung, Schritt-für-Schritt-Anleitungen für bürokratische Prozesse, Informationen zum Visumprozess und Krankenversicherung

Erklärung, wie der Prototyp auf die spezifischen Bedürfnisse der verschiedenen Personas eingeht
Berücksichtigung von Nutzungskontexten: Beschreibung, wie die responsive Gestaltung und die einfache Handhabung den Nutzern entgegenkommen
- Mobile Anwendung vs Desktopanwendung

Entwicklung eines detaillierten User Flows herausgelassen um Zeit zu sparen und weil nicht genügend Gesprächspartner zum validieren des Flows vorhanden wären

Low-Fidelity Prototyp: Beschreibung der ersten Prototypen und wie diese in Miro oder FigJam entwickelt wurden

Klarer Indikator in Form einer Ampel und mit Fortschrittsbalken, damit die Studenten schon von Anfang an wissen ob sie zeitlich im Plan sind.
Erinnerungsfunktion für Deadlines
Dokumentenverwaltung
Detailinformationen
Kalenderansicht
Graphenansicht
Studierende sollen nicht gleich mit allen Aufgaben überschüttet werden, sondern Schritt für Schritt durch den Prozess geleitet werden.
Mehrsprachige Unterstützung



= Diskussion und Ausblick

Ausblick und Fazit
Validierung:
- Funktionen und UI des Prototypen müssen noch
validiert werden
Datenanalyse:
- Durch die Anwendung kann gezielt zu den einzelnen
Prozessschritten Feedback eingeholt werden
Symptombehandlung oder Ursachenforschung:
- Anwendung hilft bei der Durchführung des Prozesses
- Anpassungen am Prozess (Antwortzeiten, Vernetzung
der Behörden)

Beantwortung der Forschungsfrage: Prototyp muss auf die Ziele der Studierenden ausgerichtet sein und kann dadurch die Probleme der Studierenden lösen. Kontinuierliches Feedback und Anpassung des Prototypen ist, in Absprache mit den Studierenden, notwendig.

Validierung und weitere Iterationen mit Interviewpartnern
Implementierung
Vernetzen mit den Behörden und anderen Institutionen
Anpassung des Unterstützungsgrads
sammeln von weiterem Feedback durch so eine App
Ermitteln von Prozesszeiten durch Nutzerdaten

Potenzial für proaktive Dienstleistungen: Betrachtung, inwiefern der Prototyp die Entwicklung proaktiver Verwaltungsdienstleistungen vorantreiben kann