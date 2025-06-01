import Registry from "@dashkite/registry"
import EventReactor from "@dashkite/reactive/event-reactor"
import $ from "@dashkite/zest"
import pending from "#helpers/pending"
import html from "./html"

logic = ( reactor ) ->

  yield from EventReactor
    .make reactor
    .bind @
    .forward "*"

    .when "connect", -> @render pending()

    .when "value", ( event ) ->
      if event.value.site?
        @render html event.value
        $ @root
          .query "input"
          .focus()
          .select()

    .when "edit title", ->
      @controller[ "edit title" ]()

    .when "change title", ( event ) ->
      @controller[ "change title" ] event.snapshot.target.value

    .when "edit description", ->
      @controller[ "edit description" ]()

    .when "change description", ( event ) ->
      @controller[ "change description" ] event.snapshot.target.value

    .when "finish editing", ->
      @controller[ "finish editing" ]()

  # force async
  await return

export default logic