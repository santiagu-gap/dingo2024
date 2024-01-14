effect_create_below(ef_ring, x,y,0,c_white)
effect_create_below(ef_explosion, x,y,0,c_white)

if instance_exists(oEnemySpawner){
	oEnemySpawner.level += random_range(0.1, 0.25)
}
if ( random( instance_number(oEnemyBase) ) > 3 ) or (oPlayer.hp < 25){
	instance_create_depth(x, y, 6, oHealthPickup, {hp: irandom_range(5, 25)})
}