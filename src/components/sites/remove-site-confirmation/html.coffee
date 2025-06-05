import HTML from "@dashkite/domo"

template = ({ site }) ->

  HTML.main class: "prompt", [

    HTML.header part: "L1", [
      HTML.h1 "Remove Site"
    ]
    HTML.section [
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
        HTML.a href: "#cancel", "Cancel"
        HTML.button "Remove"
      ]
    ]

  ]

export default template