import pntr

var canvas = new_image(80, 80)
draw_circle(canvas, 40, 40, 30, RED)
discard save_image(canvas, "demo.png")