import EventReactor from "@dashkite/reactive/event-reactor"
import $ from "@dashkite/zest"
import pending from "#helpers/pending"
import html from "./html"

logic = ( reactor ) ->


  for await event from reactor

    switch event.name

      when "connect"
        @render pending()

      when "value"
        { branch, internal } = event.value
        if branch?
          @render html 
            gadgets: Gadgets.from branch
        else
          # we should never get here
          # TODO is there something else we can do?
          @dispatch "failure"      

    yield event

export default logic