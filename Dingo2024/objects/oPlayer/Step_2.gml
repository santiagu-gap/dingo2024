if keyboard_check_pressed(vk_tab){
	invToggle = !invToggle
	if invToggle{
		instance_create_depth(40, 50, 0, oUpgradeOrder)
		for(var i = 0; i <array_length(upgrades); i++){
			var it = instance_create_depth(10 + (i*90), 280, 1, oUpgradeblock, {index: i})
			var newx = (i>0) ? oUpgradeOrder.list[i-1].bbox_right : 20
			it.x = 40 + 80 + newx
			it.y = 50
			array_push(oUpgradeOrder.list, it)
		}
	}else{
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
		show_message({
			atkSpd, dashDist
		})
		instance_destroy(oUpgradeOrder)
		instance_destroy(oUpgradeblock)
	}
}

if keyboard_check_pressed(ord("F")){
	itemSelect++
	if itemSelect>=array_length(items){
		itemSelect = 0
	}
}