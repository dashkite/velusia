import * as Fn from "@dashkite/joy/function"
import $ from "@dashkite/zest"
import {
  shadowed, renderable, styleable, 
  reactive, eventful
} from "@dashkite/wayland"

import { component, forms, animations } from "@dashkite/posh"

import { connect, validating } from "#helpers"

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
    connect
    logic
  ] 

  @click()
    .matches "[href='#cancel']"
    .apply -> history.back()

  @submit()
    .intercept()
    .apply ( event ) -> 
      @controller[ "add site" ] do ->
        $ event.target
          .form
          .data
