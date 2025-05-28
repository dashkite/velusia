import HTML from "@dashkite/domo"

template = ({ site, links }) ->
  [

    HTML.header part: "L1", [
      HTML.a href: links.edit, [ HTML.h1 site.title ]
    ]

    HTML.main [ HTML.p site.description ]

    HTML.footer [

      HTML.nav [

        HTML.a href:links.edit, [ 
          HTML.tag "named-icon", name: "edit site"
          "Edit" 
        ]

        HTML.a href: links.remove, [
          HTML.tag "named-icon", name: "remove site"
          "Delete" 
        ]

      ]
    ]

  ]


export default template