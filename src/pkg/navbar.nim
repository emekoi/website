#  Copyright (c) 2018 emekoi
#
#  This library is free software; you can redistribute it and/or modify it
#  under the terms of the MIT license. See LICENSE for details.
#

include karax/prelude

converter toKstring(b: bool): kstring =
  return kstring(repr(b))

proc makeNavbar*(fields: varargs[string]): VNode =
  result = buildHtml:
    nav(class = "navbar is-fixed-top", role = "navigation", `aria-label` = "main navigation"):
      tdiv(class = "navbar-brand"):
        a(class = "navbar-item", href = "https://bulma.io"):
          img(
            src = "https://bulma.io/images/bulma-logo.png",
            alt = "Bulma: a modern CSS framework based on Flexbox",
            width = "112", height="28"
          )
        a(
          role = "button",
          class = "navbar-burger",
          `data-target` = "navMenu",
          `aria-label` = "menu",
          `aria-expanded` = false
        ):
          span(`aria-hidden` = true)
          span(`aria-hidden` = true)
          span(`aria-hidden` = true)

          proc onclick(ev: Event; n: VNode) =
            if n.id != nil: echo n.id

            # if n.class != nil: echo n.class

      tdiv(class = "navbar-menu", id = "navMenu"):
        tdiv(class = "navbar-start"):
          for entry in fields:
            a(class = "navbar-item"):
              text entry
        # tdiv(class = "navbar-end"):
