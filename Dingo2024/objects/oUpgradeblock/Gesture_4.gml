if place_meeting(x, y, oUpgradeOrder){
	var recent = oUpgradeOrder.list[array_length(oUpgradeOrder.list)-1]
	x = recent.bbox_right
	y = recent.y
	array_push(oUpgradeOrder.list, id)
}