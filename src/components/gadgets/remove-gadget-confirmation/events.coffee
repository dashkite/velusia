import { eventful } from "@dashkite/wayland"
import $ from "@dashkite/zest"

events = ( base ) ->

  class extends eventful base
    @click()
      .matches "[name='remove']"
      .apply ->
        @state[ "remove selected gadget" ]()

export default events