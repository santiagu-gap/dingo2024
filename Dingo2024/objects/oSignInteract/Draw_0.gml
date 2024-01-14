if place_meeting(x, y, oPlayer){
	draw_set_color(c_black)
	draw_rectangle(x-52, y-62, x+52, y-10, false)
	draw_set_color(c_white)
	draw_text_ext(x-50, y-60, text, 10, 100)
}