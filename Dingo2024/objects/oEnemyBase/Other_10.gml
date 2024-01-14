//Bullets and collision damage

if state{
shootBullet(bullets[bulletindex], oPlayer)
alarm[bulletindex] = global.itemType[bullets[bulletindex]].cooldown
}

if place_meeting(x, y, target) {target.hp -= contDmg}