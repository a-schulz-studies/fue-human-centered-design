#set page(numbering: "1")
// #counter(page).update(1)

#pagebreak()
#heading(numbering: none)[Anhang]<appendix>
//https://github.com/typst/typst/discussions/4031
#outline(target: heading.where(supplement: [Anhang]), title: [Anhangsverzeichnis], indent: auto,)

#counter(heading).update(0)
#set heading(numbering: "A.1", supplement: [Anhang])

= Ergänzendes Material zur Analyse der Nutzerbedürfnisse
== Personas <personas>

*Persona 1: Lukas Nowak (EU-Ausland)*

- Alter: 23 Jahre
- Herkunft: Polen
- Studienrichtung: Informatik (4. Semester)
- Dauer des Aufenthalts: 1 Semester (Erasmus-Programm)
- Sprachkenntnisse: Polnisch (Muttersprache), Englisch (sehr gut), Deutsch (fortgeschritten)

Über Lukas:

Lukas studiert Informatik an einer Universität in Warschau und hat sich für ein Austauschsemester an der Hochschule für Technik und Wirtschaft Dresden (HTWD) entschieden. Er interessiert sich besonders für Künstliche Intelligenz und sieht den Aufenthalt als Chance, neue Lehrmethoden kennenzulernen und sein berufliches Netzwerk in Deutschland zu erweitern.

Ziele:

- Erfolgreicher Abschluss seines Erasmus-Semesters und Anerkennung der erbrachten Leistungen an seiner Heimatuniversität.
- Verbesserung seiner Deutschkenntnisse, um sich auf eine spätere Karriere in Deutschland vorzubereiten.
- Teilnahme an Hackathons und IT-Veranstaltungen, um Kontakte in der deutschen Tech-Community zu knüpfen.

Frustrationen:

- Unterschiedliche Anforderungen der Heimat- und Gastuniversität erschweren die Kurswahl und die Anerkennung von Leistungen.
- Trotz fortgeschrittener Deutschkenntnisse sind behördliche Formulierungen oft schwer verständlich.
- Lange Wartezeiten bei der Anmeldung in Dresden und fehlende digitale Prozesse für Studierende aus dem EU-Ausland.

Verhalten und Herausforderungen:

- Lukas informiert sich vorab gründlich über Prozesse, findet aber oft widersprüchliche oder unvollständige Informationen.
- Er ist es gewohnt, Behördengänge online zu erledigen, stößt in Deutschland jedoch auf viele papierbasierte Prozesse.
- Die deutsche Bürokratie wirkt im Vergleich zu Polen komplizierter.
- Er hat Probleme mit der Wohnsituation, da kurzfristige Mietverträge für Studierende schwer zu finden sind.

*Persona 2: Zhang Wei (Nicht-EU-Ausland)*

- Alter: 24 Jahre
- Herkunft: China
- Studienrichtung: Maschinenbau (Masterstudium)
- Dauer des Aufenthalts: 2 Jahre (kompletter Master)
- Sprachkenntnisse: Chinesisch (Muttersprache), Englisch (fließend), Deutsch (B1-Niveau)

Über Zhang Wei:

Zhang Wei kommt aus Peking und hat sich für ein Masterstudium in Maschinenbau an der HTW Dresden entschieden. Er hat bereits ein Auslandssemester in den USA absolviert und ist es gewohnt, sich in einer internationalen Umgebung zu bewegen. Er spricht etwas Deutsch, fühlt sich aber nicht sicher genug, um komplizierte Behördengänge ohne Hilfe zu bewältigen.

Ziele:

- Erfolgreich den Masterabschluss in Maschinenbau erwerben und Praktika in Deutschland machen.
- Netzwerke in der deutschen Industrie aufbauen, um später in Europa zu arbeiten.
- Mehr über die deutsche Kultur und Sprache lernen, um sich besser integrieren zu können.

Frustrationen:

- Probleme, alle notwendigen Dokumente rechtzeitig zusammenzustellen (z.B. Meldebescheinigung, Visum).
- Schwierigkeiten, die Anforderungen für das Visum und den Aufenthaltstitel zu verstehen und umzusetzen.
- Hohe Bürokratie und unterschiedliche Informationen auf verschiedenen Webseiten.

Verhalten und Herausforderungen:

- Zhang hat Schwierigkeiten mit der Beantragung seines Visums und der Verlängerung seines Aufenthaltstitels, da der Prozess kompliziert und zeitaufwendig ist.
- Er hat lange Wartezeiten bei der Terminvereinbarung für die Anmeldung und die Beantragung des Aufenthaltstitels erlebt.
- Die Informationsbeschaffung zu behördlichen Anforderungen ist für ihn zeitintensiv und oft unübersichtlich, da viele Informationen auf Deutsch sind.

== Interviewleitfaden <interviewguide>
#underline[*Interview Guide: Human-Centered Design for a Prototype*]

*Goal:* To gather insights on the real-life experiences of international students when dealing with bureaucratic processes in Germany and identify pain points and opportunities for improvement.

*1. Introduction (5 minutes)*

- *Introduce yourself and the project:*

  - "Thank you for taking the time to meet with me today. I’m working on a project that aims to simplify the bureaucratic processes for international students in Germany. We’re developing a digital tool that will make these steps easier to navigate."

- *Purpose of the interview:*

  - "Today, I’d like to hear about your experience so far – from the steps you’ve completed to any challenges or frustrations you’ve encountered. This will help us design a tool that truly meets the needs of students like you."

- *Confidentiality and consent:*

  - "Your answers will be used for the design of the tool, but everything you say will remain anonymous and confidential. Is it okay if I take notes and record our conversation?"

*2. Pre-arrival Preparation (10 minutes)*

- *University search and application process:*

  - "How did you decide which universities to apply to?"
  - "What tools or websites did you use to gather information?"
  - "Was there anything unclear or difficult when it came to gathering the necessary documents and applying?"
  - "What were the biggest challenges or confusion points for you when dealing with <...> in Germany?"
  - "Was there any information you found confusing or difficult to understand regarding <...> ?"
  - "What would have made the <...> process easier for you?"
  - "Did you feel there were enough resources available to help you navigate <...>? If not, what resources would have been helpful?"

- *Visa application:*

  - "What has been your experience with applying for your student visa?"
  - "Were there any delays or issues?"
  - "How did you find out about the steps you needed to take for your visa application?"
  - "What were the biggest challenges or confusion points for you when dealing with <...> in Germany?"
  - "Was there any information you found confusing or difficult to understand regarding <...> ?"
  - "What would have made the <...> process easier for you?"
  - "Did you feel there were enough resources available to help you navigate <...>? If not, what resources would have been helpful?"

- *Accommodation:*

  - "How did you find and apply for accommodation?"
  - "Which challenges did you face?"
  - "Did you need to submit any documents physically, and if so, was that a burden?"
  - "What were the biggest challenges or confusion points for you when dealing with <...> in Germany?"
  - "Was there any information you found confusing or difficult to understand regarding <...> ?"
  - "What would have made the <...> process easier for you?"
  - "Did you feel there were enough resources available to help you navigate <...>? If not, what resources would have been helpful?"

- *Health insurance*:

  - "Did you know that health insurance is required for enrollment in Germany? How did you find out about this requirement?"
    - "Were you able to find clear information about health insurance requirements before arriving in Germany?"
    - "Which resources or websites (e.g., DAAD) did you use to gather information about health insurance?"
  - "Was it clear to you what type of health insurance you need (private or public)?"
  - "What steps did you take to apply for health insurance?"
  - *EU-Students => Recognition of EHIC:*

    - "Did you already have a European Health Insurance Card (EHIC) or equivalent before coming to Germany? Was it easy to get your coverage recognized by a German health insurance provider?"
    - "Were there any limitations on the healthcare services your EHIC or national insurance covers in Germany?"
    - *Verification Process:*

      - "Was the process of getting a certificate from a German health insurance provider to confirm your coverage straightforward?"
      - "Did you encounter any issues when trying to get your insurance verified by a German statutory health insurance provider?"
  - *Non-EU-Students => Recognition of Private Insurance:*

    - "Did you have private health insurance from your home country? If yes, was it recognized in Germany, or did you have to switch to a German statutory insurance?"
    - "Did you encounter any challenges or delays in getting your private insurance validated by a German statutory health insurance provider?"

    - *Upfront Costs and Reimbursement:*

      - "Since you are privately insured, how has the process of upfront payments for medical services and reimbursement been?"
      - "Were there any surprises or issues with covering the costs of treatments in Germany through your private insurance?"

  - "What were the biggest challenges or confusion points for you when dealing with <...> in Germany?"
  - "Was there any information you found confusing or difficult to understand regarding <...> ?"
  - "What would have made the <...> process easier for you?"
  - "Did you feel there were enough resources available to help you navigate <...>? If not, what resources would have been helpful?"

- *Semester fee*:
  - "Did you know that you have to pay the semester fee before the start of your semester in Dresden?"
  - "Which ressources helped you determine the amount to pay and gave further instructions?"

*3. Arrival and general overview (10 minutes)*

- *First steps after arrival*

  - “When did you arrive in Germany and what were the first steps you took to officially register?”
  - “Did you already receive certain documents or information before your arrival that prepared you for these processes?”

- *Orientation upon arrival*

  - “How did you find out about the necessary steps after your arrival? Did you receive support from the university, the Welcome Center of the City of Dresden or other institutions?”
  - “Did you know about the help from the university or the Welcome Center of the City of Dresden?”

- *Feeling of preparation*

  - “Did you feel well prepared for the administrative tasks that came your way, or were there things that were unclear or confusing?”

*4. First Steps in Germany (15 minutes)*

- *Registration at the Einwohnermeldeamt (residents’ registration office):*

  - "Have you already completed your registration at the Einwohnermeldeamt? If yes, how was the experience?"
  - "If you haven’t done it yet, do you know what steps you need to take? Is anything unclear?"

- *Other administrative steps:*

  - "Have you had to deal with any other bureaucratic steps since arriving in Germany, such as bank accounts or phone contracts? What was that experience like?"

- *Language barriers:*

  - "Did you encounter any issues related to language during these processes? Were the instructions available in a language you’re comfortable with?"

*5.  Personal interests (10 minutes)*

- Do you plan on visiting other neighboring countries as well?
- What are some other activities you did instead of going through all the bureaucratic processes?
- Searching hobbies, fitness studio other interests ...?

*6. Situation and used devices (2 minute)*

- "When did you complete the steps mentioned above? (Morning, evening, traveling)"
- "What devices did you use? (Mobile, Laptop, Desktop, e.g. Arbeitsmittel)"

*7.  Challenges and Pain Points (10 minutes)*

- *Major challenges:*

  - "What were the most difficult parts of the process for you? Was there any step where you felt confused or frustrated?"
  - "Which steps seemd confusing to you?"
  - "Did you feel like the information you needed was easy to find, or did you have to search in many different places?"

- *Support and communication:*

  - "Did you receive any support from the university or other organizations during these steps?"
  - "If yes, how helpful was that support? If not, what would have been helpful?"

- *Digitization and online processes*

  - “Did you have to complete many of these processes in person on site or were you able to complete some of them online?”
  - “How would you rate the user-friendliness of the online systems?”

*8. Feedback and Improvement Ideas (10 minutes)*

- *Suggestions for improvement:*

  - "Based on your experience, how could these processes be made easier?"
  - "Are there any specific tools, apps, or websites that could have helped you?"
  - “What would be an ideal solution for you to make the processes simpler and more accessible? (e.g. a central platform, better communication, multilingual information)”
  - "What features would you want in a tool designed to support international students with bureaucracy?"

- *Positive examples:*

  - "Were there any aspects of the process that worked really well? Can you think of any good practices from your home country or other experiences that might be helpful here?"

- *Technology and user preferences:*

  - "Would you prefer to have an online tool or app to guide you through these processes step by step? What would be the most important features?"
  - "Would you like to receive reminders or notifications for deadlines (e.g., for visa renewal or registration)?"

*9. Closing (5 minutes)*

- *Thank them for their time:*

  - "Thank you so much for sharing your experience. Is there anything else you would like to add that we haven't discussed so far? It will be incredibly helpful in shaping the prototype."

- *Next steps:*

  - "As we move forward with the development, would it be okay if I contact you again for feedback on the prototype once it's ready for testing?"

- *Final thoughts:*

  - "Is there anything else you’d like to add that we haven’t covered yet?"
  - “Thank you again for your time and support!”

#pagebreak()
== Transkripte der Interviews <interviewtranscripts>

*Erstes Interview*

Datum: 21.10.2024\
Zeit: 10.00 - 10.30 Uhr\
Ort: Google Meet\
Interviewer: Alexander Schulz (I)\
Interviewpartner: Austauschstudierender (B)

#include ("../common/appendix/1_interview_transcript.typ")

#pagebreak()
*Folgefragen zum ersten Interview*

Dieser Fragebogen wurde nach dem Interview and den Interviewpartner gesendet, um weitere Informationen zu erhalten. Die Antworten wurden per E-Mail übermittelt und zur übersichtlichen Darstellung in diesem Dokument zusammengefasst.


*1. General*
1. Which steps confused you the most?
  - The steps, which confused me the most was ECTS conversion because, I have completed my entire bachelor's from India and we don’t have such system. However, Uniassist helped a lot in the entire process regarding the application.
2. Which steps took you the longest?
  - Visa process took me the longest due to unavailability of visa slot for interview, i.e. near about 3 months.
4. What annoyed you the most during the whole process?
  - The time period the university took to respond back after the university application annoyed me the most.

*2. Health Insurance Questions*
1. Did you know that health insurance is required for enrollment in Germany? How did you find out about this requirement?
  - Yes, I was very much aware about the health insurance which is a mandatory for every student. And I came to know about it while I was applying to the universities.
2. Was it clear to you what type of health insurance you need (private or public)?
  - Yes, I was very much clear about the type of insurance required.
3. What steps did you take to apply for health insurance?
  - Being an international student, we need to open a block account in order to prove our financial requirement, so we do have an option regarding the health insurance and travel insurance along with opening the blocked account. (Coracle, Expatrio)

*3. Semester Fee Questions*
1. Did you know that you have to pay the semester fee before the start of your semester in Dresden? How did you find out about this requirement?
  - Yes, I was very much aware about the semester fee contribution. And this information is clearly mentioned on the university portal.
3. Which resources helped you determine the amount to pay and gave further instructions?
  - Regarding the more information about the payment, it was one of the members of the university from the administrative section who emailed regarding the payment and the amount to be paid.

*4. Device and Situation Questions*
1. When did you complete the steps mentioned above? (Morning, evening, traveling)
  - I completed the above-mentioned step, whenever I had a free time.
2. What devices did you use? (Mobile, Laptop, Desktop)
  - Mobile and laptop.
3. Which sources and online services helped you a lot?
  - Sources such as Daad.de, Uni-assist and universities application portal helped me to ease my process.
4. How would you rate the user-friendliness of those online systems?
  - Solid 9/10

*5. Personal Interest Questions*
1. Do you plan on visiting other neighboring countries as well?
  - Yes, I do want to visit neighboring countries as well, I want to explore along with my studies.
2. What are some other activities you did instead of going through all the bureaucratic processes?
  - E.g. searching for hobbies, fitness studio, other interests
  - E.g. searching for public transport availability
  - E.g. searching for country specific laws and regulations
  - E.g. searching for activities like partying or social clubs
  - ...

  - I searched more about the rules and regulations and also focused on searching about the transportation systems in Germany.

*6. Improvement ideas*
1. Based on your experience, how could these processes be made easier?
  - Based on my experience, I was totally satisfied during my entire process, however I would like to request for the improvement in visa process (visa slots are to be made available on regular basis).
2. Are there any specific tools, apps, or websites that could have helped you?
  - **I don’t think other website or other social media platforms could have helped me more, because entire process was made easier by sources**
3. What would be an ideal solution for you to make the processes simpler and more accessible?
  - Ideal solution to make the entire process easier could be the universities should not take so long time to announce the result of acceptance or rejections, this can be done in short period of time instead of taking 2-3 months, and embassy should be focusing more on the visa process, they need to think of making it easier.
4. What features would you want in a tool designed to support international students with bureaucracy?
  - Would you prefer to have an online tool or app to guide you through these processes step by step?
  - Would you like to receive reminders or notifications for deadlines?

  - A tool for international students in Germany could include a document checklist for visas, health insurance, and residence registration, with step-by-step guides for bureaucratic processes like Anmeldung and residence permits. It should feature multi-language support, appointment booking tools, and cost calculators for budgeting. Integration with government APIs, document translation help, and networking opportunities with other students would enhance convenience. Emergency contacts and career/work permit guidance would complete the package.

*7. Final thoughts*
1. How would you summarize your overall experience dealing with the bureaucratic steps as an international student in Germany? Did you feel supported, frustrated, overwhelmed, or something else?
  - I would summarize the entire process “Satisfied”, and from my experience I felt supported.


#pagebreak()
*Transkription des zweiten Interviews*

Datum: 14.11.2024\
Zeit: 07:00 - 07:45 Uhr\
Ort: Google Meet\
Interviewer: Alexander Schulz (I)\
Interviewpartner: Austauschstudierender (B)

#include ("../common/appendix/2_interview_transcript.typ")


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
= Ergänzendes Material zur Analyse des Ideal-Prozesses
== JSON-Struktur <jsonprocess>

#highlight[process.json einfügen]
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

#highlight[diagram.mmd einfügen]

#pagebreak()

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

= Ergänzendes Material zum Prototypen
== Vollständige Featureliste mit Priorität <features>

#show figure: set block(breakable: true)
#figure(
  table(
    columns: 3,
    table.header[ *Priorität*][*Beschreibung* ][ *Nutzergruppe*],
    [ *1* ],
    [*Personalisierung* der Anwendung anhand der individuellen Situation der Studierdenen ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Statusindikator* ob es in der aktuellen Situation zeitlich möglich ist, das Semester pünktlich zu starten ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Dokumenten-Checkliste* mit Deadlines für Visa, Krankenversicherung, Meldebescheinigung etc. ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Erinnerung an Deadlines* um wichtige Termine nicht zu verpassen ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Mehrsprachige Unterstützung*, mindestens in Englisch und Deutsch, für sprachliche Barrieren. ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Schritt-für-Schritt-Anleitungen* für Visum, Anmeldung, Aufenthaltserlaubnis und andere Prozesse. ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Notfallkontakte* wie Polizei, Krankenwagen und Botschaften. ],
    [Alle Austauschstudenten ],

    [ *1* ],
    [*Erasmus-spezifische Informationen* zu Programmen und Schritten. ],
    [Erasmus-Studenten ],

    [ *1* ],
    [*Informationen zum Visumprozess* mit allen wichtigen Dokumenten ],
    [Nicht EU Austauschstudenten ],

    [ *1* ],
    [*Informationen zur Krankenversicherung*, mit Vergleich gesetzlicher und privater Optionen. ],
    [Nicht EU Austauschstudenten ],

    [ *1* ],
    [*Rechner zum Konvertieren von ECTs* um zu prüfen, ob die Anforderungen an den Universitäten erfüllt werden.],
    [Nicht EU Austauschstudenten ],

    [ *1* ], [*Informationen zum Sperrkonto* ], [Nicht EU Austauschstudenten ],
    [ *2* ],
    [*Informationen zu Kultur und Orientierung* bspw. Funktionsweise ÖPNV, Unterschiede der Kultur. ],
    [Alle Austauschstudenten ],

    [ *2* ],
    [*Integration von studentischen Hilfsorganisationen* mit Kontaktdaten und Angeboten. ],
    [Alle Austauschstudenten ],

    [ *2* ],
    [*Seriöse Links zu Wohnungsportalen* zur sicheren Unterkunftssuche. ],
    [Alle Austauschstudenten ],

    [ *3* ],
    [*Dokumentenübersetzung* für behördliche Kommunikation. ],
    [Alle Austauschstudenten ],

    [ *3* ],
    [*Feedback-Funktion und Analytiks* für Verbesserungsvorschläge und Problemberichte zu den jeweiligen Prozessen (kontinuierliche Verbesserung). Die Erfassung realer Nutzungsdaten ermöglicht eine Optimierung der administrativen Abläufe durch bessere Ressourcennutzung. ],
    [Alle Austauschstudenten ],

    [ *3* ],
    [*Kostenrechner* zur Planung von Semestergebühren, Miete, Versicherungen und anderen Ausgaben. ],
    [Finanzbewusste Studenten ],

    [ *3* ],
    [*Anpassung des Unterstützungsgrads* damit Studierende mit unterschiedlichem Vorwissen individuell zugeschnittene Hilfestellungen erhalten. ],
    [ Alle Austauschstudenten ],

    [ *3* ],
    [*Terminbuchungsfunktion* für Behörden wie Einwohnermeldeamt und Ausländerbehörde. ],
    [Alle Austauschstudenten ],

    [ *3* ],
    [*Vernetzungsfunktionen*, wie Foren oder Chatgruppen für Austauschstudenten. ],
    [Kommunikationsfreudige Studenten ],

    [ *4* ],
    [*Integration von Behörden-APIs*, um Antragsstatus und Bearbeitungszeiten abzurufen. ],
    [Alle Austauschstudenten ],

    [ *5* ],
    [*Informationen zu Karriere und Teilzeitjobs* inklusive Unterstützung bei der Arbeitserlaubnis. ],
    [Studenten, die arbeiten möchten oder Geld brauchen],

    [ *5* ],
    [*Reduzierung von Papierkram* durch digitale Dokumenteneinreichung und Verwaltung. ],
    [Alle Austauschstudenten ],
  ),
  caption: [
    Featureliste mit Priorität und Nutzergruppen
  ],
  outlined: false,
)

- *Priorität 1*: Unmittelbar wichtige Features, die bürokratische Prozesse und sprachliche Barrieren reduzieren.
- *Priorität 2*: Features zur Verbesserung der Planung und Sicherheit, z. B. Kosten und Unterkunft.
- *Priorität 3*: Soziale und berufliche Integration sowie Feedbackmöglichkeiten.
- *Priorität 4*: Erweiterte Funktionen zur Automatisierung und spezifische Programme.
- *Priorität 5*: Zusatzfunktionen zur Optimierung des Benutzererlebnisses.

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
== Darstellung des Prototyp <prototype>

*Erfassung der Lebenslage*

#figure(
  image("../images/Protoyp_Identifikation_Lebenslage.png"),
  caption: [
    Prototyp - Darstellung Erfassung der Lebenslage
  ],
  outlined: false,
)

#pagebreak()
*Dashboard*

#figure(
  image("../images/Prototyp_Dashboard.png", height: 92%),
  caption: [
    Prototyp - Darstellung des Dashboards
  ],
  outlined: false,
)
#pagebreak()
*Prozessablauf*

#figure(
  image("../images/Prototyp_Ablauf.png"),
  caption: [
    Prototyp - Darstellung des Ablaufs
  ],
  outlined: false,
)


