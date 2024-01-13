if (type==eBType.NOR){
	direction += angleOff
}else if (type==eBType.HOMING){
	direction = point_direction(x, y, obj.x, obj.y)
	var dx = (obj.x-x)
	var dy = (obj.y-y)
	hspeed += dx*0.2
	vspeed += dx*0.2
	speed = spd
}else{
	
}