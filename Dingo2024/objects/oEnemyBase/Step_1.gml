if point_distance(x, y, oPlayer.x, oPlayer.y) <= aggroDistance and !state {
	state = 1
	for(var i = 0; i < array_length(bullets); i++){
		alarm[i] = global.itemType[ bullets[i] ].cooldown
	}
}
if hp < 0 {instance_destroy()}

if place_meeting(x, y, target) {target.hp -= contDmg}