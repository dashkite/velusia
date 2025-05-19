import * as Fn from "@dashkite/joy/function"
import $ from "@dashkite/zest"
import { component, forms } from "@dashkite/posh"

import { 
  shadowed, styleable 
  renderable, reactive
  eventful } from "@dashkite/wayland"

import Profile from "@dashkite/profile"

import logic from "./logic"
# import css from "./css"

class extends do Fn.pipe [ 
    shadowed, styleable
    renderable, reactive
    eventful
  ]

  @tag "email-connector"

  @sheets [ component, forms ]

  @submit()
    .apply ->
      console.log "form submit!"
      profile = ( $ @root ).form.data
      profile.sites ?= []
      Profile.save profile
      @dispatch "success"

  @reactor logic