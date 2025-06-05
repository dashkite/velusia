import { Sites } from "@dashkite/aldera"
import configuration from "#configuration"
{ origin } = configuration

state = ( base ) ->

  class extends base

    show: ->
      @controller = await Sites.resolve sites: { origin }
      @controller.listen()

    hide: -> @state.close()

export default state