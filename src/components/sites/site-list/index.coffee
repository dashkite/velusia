import * as Fn from "@dashkite/joy/function"
import Registry from "@dashkite/registry"
import {
  shadowed, renderable, styleable, reactive
} from "@dashkite/wayland"

import { component, animations } from "@dashkite/posh"

import { Sites } from "@dashkite/aldera"
import configuration from "#configuration"

import html from "./html"
import pending from "#helpers/pending"
import css from "./css"

{ origin } = configuration

class extends do Fn.pipe [
    shadowed
    renderable
    styleable
    reactive
  ]

  @tag "site-list"

  @sheets [ css, component, animations ]

  # TODO this should use @reactor
  # also showtime?
  @start ->
    @render pending()
    application = await Registry.get "application"
    @controller = await Sites.resolve sites: { origin }
    for await event from @controller.listen()
      switch event.name
        when "value"
          links =
            add: application.link name: "add site"
          @render html { event.value..., links }
