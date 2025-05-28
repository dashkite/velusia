import * as Fn from "@dashkite/joy/function"
import {
  shadowed, renderable, styleable
  reactive, recurrent
} from "@dashkite/wayland"

import { component, icons, animations } from "@dashkite/posh"

import { showtime } from "#helpers/showtime"

import stateful from "./state"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, renderable, styleable
    reactive, recurrent, stateful
  ]

  @tag "site-summary"

  @sheets [ 
    css
    component
    icons
    animations
  ]

  @reactors [
    showtime
    logic
  ]