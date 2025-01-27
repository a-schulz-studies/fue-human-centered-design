#set page(numbering: "1")
// #counter(page).update(1)

#pagebreak()
#heading(numbering: none)[Anhang]<appendix>

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
#set heading(numbering: "A.1")

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
== Ist-Prozess

#pagebreak()
= Ergänzendes Material zum Prototypen
== Screenshots des Prototypen
