enemyList = [oRat, oFly]

sp = {
	x1: 64, x2: 640-64, y1: 64, y2: 360-64
}

level = 1

spawner = function(){
	var currEnemy = irandom( level-instance_number(oEnemyBase) )
	var posx = oPlayer.x, posy = oPlayer.y, tolerance = 75
	
	for (var i = 0; i < currEnemy; ++i) {
	    var nx = irandom_range(sp.x1, sp.x2), ny = irandom_range(sp.y1, sp.y2)
		while (point_distance(oPlayer.x, oPlayer.y, nx, ny)<tolerance or collision_circle(nx, ny, 32, oWall, true, true)){
			nx = irandom_range(sp.x1, sp.x2); ny = irandom_range(sp.y1, sp.y2);
		}
	
		var enemy = enemyList[irandom(array_length(enemyList)-1)]
		var it = instance_create_depth(nx, ny, 0, enemy)
		it.spd *= choose( level*random_range(0.025, 0.25), 1+(level/30))
		it.hp *= level*random_range(0.25, 0.5)
		it.dmgBpnus = level*random_range(0, 0.5)
		it.aggoDistance = sqr(logn(level+2, 2))*12
	}
}

alarm[0] = 60

audio_play_sound(sndSHUTTIGHT, 0, true, 0.7)