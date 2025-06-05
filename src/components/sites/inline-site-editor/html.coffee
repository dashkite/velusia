import HTML from "@dashkite/domo"

template = ({ site, editing }) ->
  [

    HTML.header part: "L1", [

      HTML.h1 [
        if editing == "title"
          HTML.input
            name: "title"
            type: "text"
            value: site.title
        else
          HTML.span site.title
      ]
    ]

    HTML.main [ 
      HTML.p [
        if editing == "description"
          HTML.input
            name: "description"
            type: "text"
            value: site.description
        else
          HTML.span site.description 
      ]
    ]

  ]


export default template