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
			var tmod = tmpData.mods[0]
			applyMod(tmod.stat, tmod.operation, tmod.value)
			if array_length(tmpData.mods)==2{
				tmod = tmpData.mods[1]
				applyMod(tmod.stat, tmod.operation, tmod.value)
			}
			array_push(upgrades, tmpData)
		}
		instance_destroy(oUpgradeOrder)
		instance_destroy(oUpgradeblock)
	}
}