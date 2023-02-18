# Package

version       = "0.0.1"
author        = "David Konsumer"
description   = "A nim wrapper around pntr the graphics library"
license       = "MIT"
srcDir        = "src"
bin           = @["demo"]


# Dependencies

requires "nim >= 1.6.10"

task pntr, "Build static C lib":
  exec("gcc -c src/pntr.c")
  exec("ar rvs pntr.a pntr.o")