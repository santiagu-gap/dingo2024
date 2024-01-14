//aggro check
if point_distance(x, y, oPlayer.x, oPlayer.y) <= aggroDistance and !state {
	state = 1
	for(var i = 0; i < array_length(bullets); i++){
		alarm[i] = global.itemType[ bullets[i] ].cooldown
	}
}
if hp < 0 {instance_destroy()}

//Movement
var dir = point_direction(x, y, target.x, target.y)

if state{
motion_add(dir, spd*0.5) //For the fly, remove this
speed = clamp(speed, 0, spd)
}