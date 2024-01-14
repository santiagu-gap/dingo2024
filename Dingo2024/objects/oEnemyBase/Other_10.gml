if state{
shootBullet(bullets[bulletindex], oPlayer, dmgBonus)
alarm[bulletindex] = global.itemType[bullets[bulletindex]].cooldown
}