import HTML from "@dashkite/domo"
import icon from "#helpers/icon"

template = ({ selected }) ->

  HTML.main [

    HTML.slot name: "header", [
      HTML.header part: "header", [
        HTML.h1 "Remove Gadget"
      ]
    ]

    HTML.div [
      HTML.p "Are you sure you want to remove
        '#{ selected }'?"

      HTML.div class: "panel", [
        HTML.button name: "remove", "Remove"
        HTML.a href: "#cancel", "Cancel"
      ]
    ]

  ]

export default template