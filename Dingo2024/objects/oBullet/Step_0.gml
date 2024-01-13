if (type==eBType.NOR){
	direction += angleOff
}else if (type==eBType.HOMING){
	var dir = point_direction(x, y, obj.x, obj.y)
	motion_add(dir, spd*0.25)
	speed = clamp(speed, 0, spd)
}else{
	direction += spd
	x = obj.x + lengthdir_x(angleOff, direction)
	y = obj.y + lengthdir_y(angleOff, direction)
}