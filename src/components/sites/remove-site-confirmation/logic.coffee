import { Gadgets } from "@dashkite/talisa"
import pending from "#helpers/pending"

import html from "./html"

logic = ( reactor ) ->


  for await event from reactor

    switch event.name

      when "connect"
        @render pending()

      when "value"
        { branch, internal } = event.value
        if branch? && internal?
          if internal.selected?
            @render html 
              gadgets: Gadgets.from branch
              selected: internal.selected
          else
            # we should never get here
            # TODO is there something else we can do?
            @dispatch "failure"        

    yield event

export default logic