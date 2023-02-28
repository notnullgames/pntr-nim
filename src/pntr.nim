import strutils
import futhark

proc renameCallback(name, kind, partof: string): string =
  return name.replace("pntr_", "")

importc:
  define "PNTR_PIXELFORMAT_RGBA"
  define "PNTR_IMPLEMENTATION"
  renameCallback renameCallback
  path "../pntr/"
  sysPath "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/"
  "pntr.h"

static:
  writeFile("pntr.c", """
  #define PNTR_PIXELFORMAT_RGBA
  #define PNTR_IMPLEMENTATION
  #include "../pntr/pntr.h"
  """)
{.compile: "pntr.c".}

const LIGHTGRAY * = color(anon0: unioncolor_anon0_t(r: 200.cuchar, g: 200.cuchar, b: 200.cuchar, a: 255.cuchar))
const GRAY      * = color(anon0: unioncolor_anon0_t(r: 130.cuchar, g: 130.cuchar, b: 130.cuchar, a: 255.cuchar))
const DARKGRAY  * = color(anon0: unioncolor_anon0_t(r: 80.cuchar, g: 80.cuchar, b: 80.cuchar, a: 255.cuchar))
const YELLOW    * = color(anon0: unioncolor_anon0_t(r: 253.cuchar, g: 249.cuchar, b: 0.cuchar, a: 255.cuchar))
const GOLD      * = color(anon0: unioncolor_anon0_t(r: 255.cuchar, g: 203.cuchar, b: 0.cuchar, a: 255.cuchar))
const ORANGE    * = color(anon0: unioncolor_anon0_t(r: 255.cuchar, g: 161.cuchar, b: 0.cuchar, a: 255.cuchar))
const PINK      * = color(anon0: unioncolor_anon0_t(r: 255.cuchar, g: 109.cuchar, b: 194.cuchar, a: 255.cuchar))
const RED       * = color(anon0: unioncolor_anon0_t(r: 230.cuchar, g: 41.cuchar, b: 55.cuchar, a: 255.cuchar))
const MAROON    * = color(anon0: unioncolor_anon0_t(r: 190.cuchar, g: 33.cuchar, b: 55.cuchar, a: 255.cuchar))
const GREEN     * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 228.cuchar, b: 48.cuchar, a: 255.cuchar))
const LIME      * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 158.cuchar, b: 47.cuchar, a: 255.cuchar))
const DARKGREEN * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 117.cuchar, b: 44.cuchar, a: 255.cuchar))
const SKYBLUE   * = color(anon0: unioncolor_anon0_t(r: 102.cuchar, g: 191.cuchar, b: 255.cuchar, a: 255.cuchar))
const BLUE      * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 121.cuchar, b: 241.cuchar, a: 255.cuchar))
const DARKBLUE  * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 82.cuchar, b: 172.cuchar, a: 255.cuchar))
const PURPLE    * = color(anon0: unioncolor_anon0_t(r: 200.cuchar, g: 122.cuchar, b: 255.cuchar, a: 255.cuchar))
const VIOLET    * = color(anon0: unioncolor_anon0_t(r: 135.cuchar, g: 60.cuchar, b: 190.cuchar, a: 255.cuchar))
const DARKPURPLE* = color(anon0: unioncolor_anon0_t(r: 112.cuchar, g: 31.cuchar, b: 126.cuchar, a: 255.cuchar))
const BEIGE     * = color(anon0: unioncolor_anon0_t(r: 211.cuchar, g: 176.cuchar, b: 131.cuchar, a: 255.cuchar))
const BROWN     * = color(anon0: unioncolor_anon0_t(r: 127.cuchar, g: 106.cuchar, b: 79.cuchar, a: 255.cuchar))
const DARKBROWN * = color(anon0: unioncolor_anon0_t(r: 76.cuchar, g: 63.cuchar, b: 47.cuchar, a: 255.cuchar))
const WHITE     * = color(anon0: unioncolor_anon0_t(r: 255.cuchar, g: 255.cuchar, b: 255.cuchar, a: 255.cuchar))
const BLACK     * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 0.cuchar, b: 0.cuchar, a: 255.cuchar))
const BLANK     * = color(anon0: unioncolor_anon0_t(r: 0.cuchar, g: 0.cuchar, b: 0.cuchar, a: 0.cuchar))
const MAGENTA   * = color(anon0: unioncolor_anon0_t(r: 255.cuchar, g: 0.cuchar, b: 255.cuchar, a: 255.cuchar))
const RAYWHITE  * = color(anon0: unioncolor_anon0_t(r: 245.cuchar, g: 245.cuchar, b: 245.cuchar, a: 255.cuchar))