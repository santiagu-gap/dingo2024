draw_self()
var barNb = floor(stamina / 100)
var barVal = (stamina-1) % 100

draw_healthbar(x-12, y+4, x+6, y+9, barVal, c_white, c_aqua, c_aqua, 1, false, false)
draw_text(x + 8, y+3, string_concat("x", barNb))