#  Copyright (c) 2018 emekoi
#
#  This library is free software; you can redistribute it and/or modify it
#  under the terms of the MIT license. See LICENSE for details.
#

include karax/prelude

proc setName(name: kstring): VNode =
  result = buildHtml:
    p(class = "subtitle"):
      text "my name is "
      strong: text name
      text "!"

var name = setName("Bulma")

proc setName(ev: Event; n: VNode) =
  name = setName(n.value)

proc nameBox(): VNode =
  result = buildHtml:
    tdiv(class = "container"):
      input(
        class = "input",
        `type` = "text",
        placeholder = "your name here",
        oninput = setName
      )

proc createDom(): VNode =
  result = buildHtml():
    tdiv(class = "content"):
      section(class = "section"):
        tdiv(class = "container"):
          h1(class = "title"):
            text "example website"
          name
          tdiv(class = "field"):
            nameBox()

setRenderer createDom
