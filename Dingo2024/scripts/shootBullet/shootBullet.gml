function shootBullet(bulletindex, target = oEnemyBase, bonusDMG = 0){
	var bullet = (is_real(bulletindex)) ? global.itemType[bulletindex] : bulletindex
	var angMin = -bullet.angleRange
	var angMax =  bullet.angleRange
	struct_set(bullet, "target", target)
	struct_set(bullet, "caller", id)
	for (var i = 0; i < bullet.amnt; i++){
		var it = instance_create_depth(x, y, depth, oBullet, bullet)
		it.dmg += bonusDMG
		var ang = lerp(angMin, angMax, i/bullet.amnt)+direction
		it.direction = ang
	}
}