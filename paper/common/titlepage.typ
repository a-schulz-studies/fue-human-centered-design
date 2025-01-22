#let titlepage(
  title: "",
  degree: "",
  program: "",
  authors: (),
  studentNumber: "",
  advisors: (),
) = {
  set document(
    title: title,
    author: authors.map(self => self.first()).join(", "),
  )
  set page(
    margin: (left: 25mm, right: 25mm, top: 30mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  let body-font = "TeX Gyre Termes"
  let sans-font = "TeX Gyre Termes" //"Times New Roman" "New Computer Modern Sans"

  set text(
    font: body-font,
    size: 12pt,
    lang: "de",
  )

  set par(leading: 1em)

  // --- Title Page ---
  //v(1cm)
  align(center, image("../images/HTWD_logo_RGB_vertical_color.svg", width: 50%))
  //align(center, image("../images/HTWD_logo_RGB_vertical_color.svg", width: 50%)) //26%

  v(5mm)
  align(
    center,
    text(
      font: sans-font,
      2em,
      weight: 700,
      "Menschenzentrierte Digitale\nVerwaltung",
    ),
  )

  align(center, text(font: sans-font, 2em, weight: 500, title))

  pad(
    top: 3em,
    right: 5%,
    left: 5%,
    grid(
      columns: 2,
      //gutter: 1em,
      row-gutter: 1em,
      column-gutter: 2em,
      if authors.len() > 1 {
       strong("Autoren: ")
      }else{
        strong("Autor: ")}, authors.map(self => self.first() + footnote(self.last())).join(", "),
      strong("Matrikelnummer: "), studentNumber,
      strong("Studiengang: "), program,
      strong("Betreuer: "), advisors.map(self => self.first() + footnote(self.last())).join(", "),
    ),
  )

  pagebreak()
}