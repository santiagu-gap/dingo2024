draw_self()
draw_sprite(data.img, 0, bbox_left-17, y)
draw_text(x+1, y+1, data.name)
for(var i = 0; i < array_length(data.mods); i++){
	var md = data.mods[i]
	var char = (md.operation==eMod.ADD) ? "+" : ( (md.operation==eMod.SUB) ? "-" : "*")
	draw_text(x+1, y+11 + (i*10), string_concat(md.stat, " ", char, string_format(md.value, 4, 1)))
}