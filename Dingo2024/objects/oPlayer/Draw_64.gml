draw_healthbar(10, 8, 220, 30, (hp/hpMax) * 100, c_black, c_red, c_red, 0, false,true)
draw_text_transformed(12, 8, hp, 2, 2, 0)

for (var i = 0; i < array_length(items); i++){
	var itm = items[i]
	draw_sprite_ext(itm.img, 0, 250 + (i * 25) + 14, 26, 2, 2, 0, c_white, 1)
}
draw_text(240, 50, items[itemSelect].name)
draw_line_width(250 + (itemSelect * 25), 40, 275 + (itemSelect * 25), 40, 3)

if invToggle{
	var tmpList = oUpgradeOrder.list
	upgrades = []
	struct_foreach(baseStat, function(key, value){
		variable_instance_set(oPlayer.id, key, value)
	})
	for(var i = 1; i < array_length(tmpList); i++){
		var tmpData = tmpList[i].data
		for (var j = 0; j < array_length(tmpData.mods); ++j) {
			var tmod = tmpData.mods[j]
			applyMod(tmod.stat, tmod.operation, tmod.value)
		}
		array_push(upgrades, tmpData)
	}
	draw_set_color(c_black)
	draw_rectangle(1090, 410, 1300, 570, false)
	draw_set_color(c_white)
	draw_rectangle(1090, 410, 1300, 570, true)
	draw_text_transformed(1100, 420, string_concat("dmg: ", dmg), 2, 2, 0)
	draw_text_transformed(1100, 440, string_concat("atkSpd: ", atkSpd), 2, 2, 0)
	draw_text_transformed(1100, 460, string_concat("dashDist: ", dashDist), 2, 2, 0)
	draw_text_transformed(1100, 480, string_concat("hpMax: ", hpMax), 2, 2, 0)
	draw_text_transformed(1100, 500, string_concat("staminaMax: ", staminaMax), 2, 2, 0)
	draw_text_transformed(1100, 520, string_concat("spd: ", spd), 2, 2, 0)
	
	for (var i = 0; i < instance_number(oEnemyBase); ++i) {
	    with instance_find(oEnemyBase, i){
			state = 0
			alarm[0] = -1
			alarm[1] = -1
			alarm[2] = -1
		}
	}
}