import { eventful } from "@dashkite/wayland"
import $ from "@dashkite/zest"

events = ( base ) ->

  class extends eventful base

    @click()
      .within ".option"
      .apply ( event ) ->
        { type } = do ->
          $ event.target
            .closest ".option"
            .data
        @state[ "add gadget" ] type
        @dispatch "success"

export default events