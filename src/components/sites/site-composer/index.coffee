import * as Fn from "@dashkite/joy/function"
import {
  shadowed, renderable, styleable, 
  reactive, eventful
} from "@dashkite/wayland"

import { component, forms, animations } from "@dashkite/posh"

import { showtime, validating } from "#helpers"

import css from "./css"

import state from "./state"
import logic from "./logic"

class extends do Fn.pipe [
    shadowed, renderable, styleable, 
    reactive, eventful,
    validating, state
  ]

  @tag "site-composer"

  @sheets [ 
    css
    component
    forms
    animations
  ]

  @reactors [
    showtime
    logic
  ]

  @click()
    .matches "[href='#cancel']"
    .apply -> history.back()

  @submit()
    .apply ( event ) -> 
      @state[ "add site" ] do ->
        $ event.target
          .form
          .data
