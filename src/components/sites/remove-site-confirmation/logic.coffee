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
        @render html event.value.site

  await return

export default logic