#  Copyright (c) 2018 emekoi
#
#  This library is free software; you can redistribute it and/or modify it
#  under the terms of the MIT license. See LICENSE for details.
#

include karax/prelude
import pkg/navbar


proc createDom(): VNode =
  result = buildHtml():

    tdiv(class = "content"):
      makeNavbar("hello", "world")
      section(class = "section"):
        tdiv(class = "container"):
          h1(class = "title"):
            text "example website"

setRenderer createDom
