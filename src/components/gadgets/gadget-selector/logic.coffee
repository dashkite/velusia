import { Gadgets } from "@dashkite/talisa"

import html from "./html"

logic = ( reactor ) ->

  for await event from reactor

    switch event.name

      when "value"
        { branch, local: { selected }} = event.value
        if branch?
          @render html 
            gadgets: Gadgets.from branch
            selected: selected

    yield event

export default logic