enum eBType{
	NOR = 0, HOMING = 1, ORBIT = 2
}

enum eElement{
	NOR = 0, FIRE = 1, ICE = 2, SHOCK = 3
}

function makeItem(name, spd, dmg, amnt, angleStart, angleOff, angleRange, img, type, life, cooldown){
	return {
		name, spd, dmg, amnt, angleStart, angleOff, angleRange, 
		img, type, ele: eElement.NOR, life, cooldown
	}
}

global.itemType = [
{
	name: "Angry Bullet", spd: 1.8, dmg: 3, amnt: 1, angleStart: -1, angleOff: 0, angleRange: 0,
	img: sPinkOrb, type: eBType.HOMING, ele: eElement.NOR, life: 120, cooldown: 120
},{
	name: "Magic Fire", spd: 1.5, dmg: 5, amnt: 3, angleStart: -1, angleOff: 0, angleRange: 60,
	img: sOrangeOrb, type: eBType.HOMING, ele: eElement.NOR, life: 120, cooldown: 150
},{
	name: "Normalcy", spd: 3, dmg: 3, amnt: 1, angleStart: -1, angleOff: 0, angleRange: 0,
	img: sBlueOrb, type: eBType.NOR, ele: eElement.NOR, life: 120, cooldown: 120
},
{
	name: "Clockwise Bullet", spd: 2.1, dmg: 4, amnt: 3, angleStart: -1, angleOff: 0, angleRange: 0, 
	img: sInfinity, type: eBType.ORBIT, ele: eElement.NOR, life: 120, cooldown: 60
},
{
	name: "Clockwise Bullet", spd: 2.1, dmg: 4, amnt: 3, angleStart: -1, angleOff: 0, angleRange: 0, 
	img: sInfinity, type: eBType.ORBIT, ele: eElement.NOR, life: 120, cooldown: 60
}
]
