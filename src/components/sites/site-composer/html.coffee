import HTML from "@dashkite/domo"

template = ({ data, errors }) ->

  HTML.form [

    HTML.slot name: "header", [
      HTML.header part: "L1", [
        HTML.h1 "Create Site"
      ]
    ]

    HTML.section [

      HTML.tag "form-field", 
        type: "text"
        name: "title"
        label: "Title"
        hint: "The title for your new site"
        required: true
        error: errors?.title?.message
        value: data.title

      HTML.tag "form-field",
        name: "description"
        label: "Description"
        hint: "A brief description of your site"
        error: errors?.description?.message
        HTML.textarea
          class: "short"
          name: "description"
          slot: "input"
          required: true
          value: data.description

    ]

    HTML.footer [
      HTML.a href: "#cancel", "Cancel"
      HTML.button "Save"
    ]

  ]

export default template