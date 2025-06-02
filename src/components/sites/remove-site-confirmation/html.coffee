import HTML from "@dashkite/domo"

template = ( site ) ->

  [

    HTML.header part: "L1", [
      HTML.h1 "Remove Site"
    ]
    HTML.main [
      HTML.p [
        "Are you sure you want to delete the site " 
        HTML.em [
          site.title ? "Untitled"
          "?"
        ]
      ] 
    ]
    HTML.footer [
      HTML.nav [
        HTML.button "Remove"
        HTML.a href: "#cancel", "Cancel"
      ]
    ]

  ]

export default template