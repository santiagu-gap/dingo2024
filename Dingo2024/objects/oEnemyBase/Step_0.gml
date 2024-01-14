//Movement
var dir = point_direction(x, y, target.x, target.y)

if state{
motion_add(dir, spd*0.5) //For the fly, remove this
speed = clamp(speed, 0, spd)
}