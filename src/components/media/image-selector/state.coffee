import { Image } from "@dashkite/aldera"

import configuration from "#configuration"
{ origin } = configuration

class State extends Image.Select
  forward: -> @machine.send name: "forward"
  back: -> @machine.send name: "back"

state = ( base ) ->

  class extends base

    show: ->
      { site, image } = ( $ @dom ).data
      @state = await State.resolve 
        site: { origin, bindings: { site }}
        internal: bindings: { image }   
      @state.listen() 

    hide: -> @state.close()

export default state