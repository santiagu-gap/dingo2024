draw_self()
draw_text(x+2, y+1, data.name)
for(var i = 0; i < array_length(data.mods); i++){
	var md = data.mods[i]
	var char = (md.operation==eMod.ADD) ? "+" : ( (md.operation==eMod.SUB) ? "-" : "*")
	draw_text(x+2, y+11 + (i*10), string_concat(md.stat, " ", char, md.value))
}