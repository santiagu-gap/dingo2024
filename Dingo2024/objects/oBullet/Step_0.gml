if (type==eBType.NOR){
	direction += angleOff
}else if (type==eBType.HOMING){
	var dir = point_direction(x, y, obj.x, obj.y)
	motion_add(dir, spd*0.125)
	speed = clamp(speed, 0, spd)
}else{
	direction += spd
	x = caller.x + lengthdir_x(angleOff, direction)
	y = caller.y + lengthdir_y(angleOff, direction)
}

if place_meeting(x, y, obj){
	obj.hp-=dmg
	instance_destroy()
}