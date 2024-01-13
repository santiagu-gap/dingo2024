enum eMod{
	ADD = 0,
	SUB = 1,
	MUL = 2
}

global.upgrade = {
	name: "fairy toothpaste",
	mods: [
		{
			stat: "atkSpd", operation: eMod.MUL, value: 1.2
		},
		{
			stat: "dmg", operation: eMod.SUB, value: 2
		}
	]
}

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