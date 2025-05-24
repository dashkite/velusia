import * as Fn from "@dashkite/joy/function"
import { 
  shadowed, styleable, renderable,
  reactive, recurrent
} from "@dashkite/wayland"

import { component, forms, compact, animations } from "@dashkite/posh"

import { showtime } from "#helpers"
import state from "#helpers/branch"

import events from "./events"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, renderable, styleable
    reactive, recurrent
    state, events
  ]

  @tag "remove-site-confirmation"

  @sheets [ component, forms, compact, animations, css ]

  @reactors [ showtime, logic ]
