import * as Fn from "@dashkite/joy/function"
import { 
  shadowed, styleable, renderable,
  reactive, recurrent
} from "@dashkite/wayland"

import { component, forms, compact } from "@dashkite/posh"

import { showtime } from "#helpers"
import state from "#helpers/branch-editor"

import events from "./events"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, styleable, renderable
    reactive, recurrent
    state, events
  ]

  @tag "remove-gadget-confirmation"

  @sheets [ component, forms, compact, css ]

  @reactors [ showtime, logic ]
