import $ from "@dashkite/zest"
import { Site } from "@dashkite/aldera"

import configuration from "#configuration"
{ origin } = configuration

state = ( base ) ->

  class extends base

    show: ->
      { site } = ( $ @dom ).data
      @controller = await Site.resolve 
        site: { origin, bindings: { site }}
        local: bindings: { site }   
      @controller.listen() 

export default state