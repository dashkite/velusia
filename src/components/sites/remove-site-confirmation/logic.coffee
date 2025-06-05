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

    .when "value", ({ value }) ->
      @render html value

    .when "remove", ->
      @controller[ "remove site" ]()

    .when "removed", ->
      @dispatch "success"

  await return

export default logic