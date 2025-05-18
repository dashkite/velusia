import * as Fn from "@dashkite/joy/function"
import {
  shadowed, renderable, styleable
  reactive, recurrent, observable
} from "@dashkite/wayland"

import { component, forms, compact } from "@dashkite/posh"

import { timeline, showtime } from "#helpers"

import state from "./state"
import events from "./events"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, renderable, styleable
    reactive, recurrent, observable
    events, state
  ]

  @tag "sansa-select-image"

  @sheets [
    component
    forms
    compact
    css 
  ]

  @observe.attributes [ "data-site", "data-image" ]

  @reactors [
    showtime
    timeline ({ scope }) -> scope == "component"
    logic
  ]
