var bullet = global.itemType[bullets[bulletindex]]
var angMin = -bullet.angleRange
var angMax =  bullet.angleRange
for (var i = 0; i < bullet.amnt; i++){
	var it = instance_create_depth(x, y, depth, oBullet, bullet)
	var ang = lerp(angMin, angMax, i/bullet.amnt)+direction
	it.direction = ang
}
alarm[bulletindex] = bullet.cooldown