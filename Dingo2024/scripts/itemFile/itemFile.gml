enum eBType{
	NOR = 0, HOMING = 1, ORBIT = 2
}

enum eElement{
	NOR = 0, FIRE = 1, ICE = 2, SHOCK = 3
}

function makeItem(name, spd, dmg, amnt, angleStart, angleOff, img, type, life, cooldown){
	return {
		name, spd, dmg, amnt, angleStart, angleOff, img, type, ele: eElement.NOR, life, cooldown
	}
}

global.itemType = [
{
	name: "Angry Bullet", spd: 1.8, dmg: 3, amnt: 1, angleStart: -1, angleOff: 0, img: sBullet,
	type: eBType.HOMING, ele: eElement.NOR, life: 120, cooldown: 120
},
{
	name: "Clockwise Bullet", spd: 2.1, dmg: 4, amnt: 3, angleStart: -1, angleOff: 0, img: sBullet,
	type: eBType.NOR, ele: eElement.NOR, life: 120, cooldown: 60
}
]
