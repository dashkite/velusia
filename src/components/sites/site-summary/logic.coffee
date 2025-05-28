import Registry from "@dashkite/registry"
import EventReactor from "@dashkite/reactive/event-reactor"
import pending from "#helpers/pending"
import html from "./html"

logic = ( reactor ) ->

  application = await Registry.get "application"

  decorate = ( value ) ->
    value.links =
      edit: application.link
        name: "edit site"
        bindings: 
          site: value.site.address
      remove: application.link
        name: "remove site"
        bindings: 
          site: value.site.address
    value

  yield from EventReactor
    .make reactor
    .bind @
    .forward "*"
    .when "connect", -> @render pending()
    .when "value", ->
      if event.value.site?
        @render html decorate event.value

export default logic