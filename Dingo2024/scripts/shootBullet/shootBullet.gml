function shootBullet(bulletindex, target = oEnemyBase){
	var bullet = global.itemType[bulletindex]
	var angMin = -bullet.angleRange
	var angMax =  bullet.angleRange
	struct_set(bullet, "target", target)
	struct_set(bullet, "caller", id)
	for (var i = 0; i < bullet.amnt; i++){
		var it = instance_create_depth(x, y, depth, oBullet, bullet)
		var ang = lerp(angMin, angMax, i/bullet.amnt)+direction
		it.direction = ang
	}
}