import * as Fn from "@dashkite/joy/function"
import {
  shadowed, renderable, styleable
  reactive, observable, recurrent
  eventful
} from "@dashkite/wayland"

import { component, icons, animations, forms } from "@dashkite/posh"

import { showtime } from "#helpers/showtime"

import stateful from "./state"
import logic from "./logic"
import css from "./css"

class extends do Fn.pipe [
    shadowed, renderable, styleable
    reactive, observable, recurrent
    eventful, stateful
  ]

  @tag "inline-site-editor"

  @sheets [ 
    css
    component
    icons
    animations
    forms
  ]

  @observe.attributes [ "data-site" ]

  @click()
    .within "header > h1:has(span)"
    .send "edit title"

  @click()
    .within "main > p"
    .send "edit description"

  @change()
    .matches "header > h1 > input"
    .send "change title"

  @change()
    .matches "main input"
    .send "change description"

  @focusout()
    .send "finish editing"

  @reactors [
    showtime
    logic
  ]