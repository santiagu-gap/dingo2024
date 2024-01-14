if (type==eBType.NOR){
	direction += angleOff
}else if (type==eBType.HOMING){
	if instance_exists(obj){
		var dir = point_direction(x, y, obj.x, obj.y)
		motion_add(dir, spd*0.125)
		speed = clamp(speed, 0, spd)
	}
}else{
	direction += spd
	x = caller.x + lengthdir_x(angleOff, direction)
	y = caller.y + lengthdir_y(angleOff, direction)
}

if place_meeting(x, y, obj) or distance_to_object(obj)<3{
	if (target==oPlayer){
		if target.dashSpd<=6{
			obj.hp-=dmg
		}
	}else{
		obj.hp-=dmg
	}
	for (var i = 0; i < 10; ++i) {
		direction = 360*(i/10)
	    instance_create_depth(x, y, 0, oEffect, 
		{speed: 0.4, direction, gravity_direction: direction+random_range(-2, 2), gravity: -0.005})
	}
	instance_destroy()
}