# Package

version       = "0.1.0"
author        = "emekoi"
description   = "my website"
license       = "MIT"
backend       = "js"
srcDir        = "src"
binDir        = "build"
bin           = @["website.js"]

# Dependencies

requires "nim >= 0.18.0"
requires "karax >= 0.2.0"
