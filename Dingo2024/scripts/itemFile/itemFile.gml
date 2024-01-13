enum eBType{
	NOR = 0, HOMING = 1, ORBIT = 2
}

enum eElement{
	NOR = 0, FIRE = 1, ICE = 2, SHOCK = 3
}

global.itemType = {
	name: "Angry Bullet", spd: 2, dmg: 3, amnt: 1, angleStart: -1, angleOff: 0,
	type: eBType.HOMING,
	ele: eElement.NOR
}

