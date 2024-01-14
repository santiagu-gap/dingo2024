//Movement
var dir = point_direction(x, y, target.x + random_range(-10, 10), target.y + random_range(-10, 10))

var oth = collision_circle(x, y, 12, oFly, true, true)
if oth!=noone{
	motion_add(point_direction(oth.x, oth.y, x, y), spd*0.15)
}else if state{
	motion_add(dir, spd*0.15) //For the fly, remove this
	speed = clamp(speed, 0, spd)
}else{
	speed += (0-speed)/10
}