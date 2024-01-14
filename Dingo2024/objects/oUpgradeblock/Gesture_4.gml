if place_meeting(x, y, oUpgradeOrder){
	if !array_contains(oUpgradeOrder.list, id){
		var recent = oUpgradeOrder.list[array_length(oUpgradeOrder.list)-1]
		x = recent.bbox_right + 16
		y = recent.y
		array_push(oUpgradeOrder.list, id)
	}else{
		x = px
		y = py
	}
}else{
	x = px
	y = py
}