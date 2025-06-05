import * as Fn from "@dashkite/joy/function"
import { 
  shadowed, styleable, renderable,
  reactive, recurrent
} from "@dashkite/wayland"

import { component, forms, compact, animations } from "@dashkite/posh"
import prompt from "@dashkite/posh/utilities/prompt"

import state from "#helpers/site"
import { showtime } from "#helpers/showtime"

import events from "./events"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, renderable, styleable
    reactive, recurrent
    state, events
  ]

  @tag "remove-site-confirmation"

  @sheets [ component, forms, compact, animations, prompt, css ]

  @click()
    .within "button"
    .send "remove"

  @reactors [
    showtime
    logic
  ]

