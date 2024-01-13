enum eMod{
	ADD = 0,
	SUB = 1,
	MUL = 2
}

draw_set_font(fnGame)

function makeMod(stat, type, value){
	return { stat, operation: type, value }
}

function makeUpgrade(name, mods){
	return { name, mods }
}

global.upgrade = [
{
	name: "fairy toothpaste", img : sBullet,
	mods: [
		{
			stat: "atkSpd", operation: eMod.MUL, value: 1.2
		},
		{
			stat: "dmg", operation: eMod.SUB, value: 2
		}
	]
},{
	name: "hearty prowess", img : sBullet,
	mods: [
		{
			stat: "hpMax", operation: eMod.ADD, value: 50
		},
		{
			stat: "stamina", operation: eMod.SUB, value: 5
		}
	]
}
]

function applyMod(statName, type, amnt){
	var currentStat = variable_instance_get(oPlayer, statName)
	var newStat = op(type, currentStat, amnt)
	variable_instance_set(oPlayer, statName, amnt)
	return newStat
}

function op(type, statValue, amnt){
	var result = statValue
	switch(type){
		case eMod.ADD:
			result = statValue + amnt
		break;
		case eMod.MUL:
			result = statValue * amnt
		break;
		case eMod.SUB:
			result = statValue - amnt
		break;
		
		default:
			result = statValue
		break;
	}
	
	return result
}