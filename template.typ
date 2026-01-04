#let conf(title: [], subtitle: [] ,body) = {
  set document(title: title)
  
  // Configuração da Capa
  page(
    margin: 0cm,
  )[
    #place(top + left, image("cover-2.png", fit: "cover", width: 100%, height: 100%))

    //Title
    #place(
      dx: 4cm, // Posição horizontal
      dy: 12cm, // Posição vertical
      text(font: "Arial", size: 40pt, weight: "bold", fill: white)[
        #title
      ]
    )

    //Subtitle
    #place(
      dx: 4cm, // Posição horizontal
      dy: 13.8cm, // Posição vertical
      text(font: "Arial", size: 30pt, weight: "bold", fill: white)[
        #subtitle
      ]
    )
  ]
  
  counter(page).update(1)
  
  // Configuração das páginas de conteúdo
  set page(
    paper: "a4",
    margin: (bottom: 1.5cm, top: 3cm, left: 2cm, right: 1.5cm),
    background: align(top, image("Cabeçalho-01-01.png")),
    footer: context {
      set text(size: 10pt)
      [
        #rect(
          stroke: (left: none, top: rgb(0, 130, 66)),
          context [
            #box(image("SAM.png", fit: "contain"))
            #h(1fr)
            Atibaia -
            16/12/2025
            #h(1fr)
            #counter(page).display(
              "1/1",
              both: true,
            )
          ],
        )]
    },
  )

  set text(font: "Arial", size: 12pt, lang: "pt", region: "BR")
  set par(justify: true, leading: 0.52em)
  set heading(numbering: "1.1")

  outline(title: [Sumário], indent: auto)
  pagebreak()

  body
}