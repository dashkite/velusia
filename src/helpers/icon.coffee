import HTML from "@dashkite/html-render"

icon = ( name ) ->
  HTML.tag "named-icon", { name }

export { icon } 
export default icon