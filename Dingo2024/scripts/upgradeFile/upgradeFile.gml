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
	name: "fairy toothpaste", img : sFairyU,
	mods: [
		{
			stat: "atkSpd", operation: eMod.MUL, value: 0.8
		},
		{
			stat: "dmg", operation: eMod.SUB, value: 2
		}
	]
},{
    name: "hearty prowess", img : sHeartyU,
    mods: [
        {
            stat: "hpMax", operation: eMod.ADD, value: 50
        },
        {
            stat: "staminaMax", operation: eMod.SUB, value: 25
        }
    ]
},{
    name: "Good night's rest ", img : sRestU,
    mods: [
        {
            stat: "staminaMax", operation: eMod.ADD, value: 120
        },
        {
            stat: "atkSpd", operation: eMod.ADD, value: 5
        }
    ]
},{
    name: "5 hour energy", img : sEnergyU,
    mods: [
        {
            stat: "spd", operation: eMod.MUL, value: 1.20
        },
        {
            stat: "dashDist", operation: eMod.ADD, value: 3
        },
        {
            stat: "hpMax", operation: eMod.SUB, value: 15
        }
    ]
},{
    name: "Rage", img : sRageU,
    mods: [
        {
            stat: "dmg", operation: eMod.ADD, value: 5
        },
        {
            stat: "spd", operation: eMod.MUL, value: 0.9
        }
    ]
},{
    name: "Paranoia", img : sParanoiaU,
    mods: [
        {
            stat: "atkSpd", operation: eMod.MUL, value: 0.8
        },
        {
            stat: "dashDist", operation: eMod.SUB, value: 5
        }
    ]
},{
    name: "D20 (good luck buddy)", img : sD20U,
    mods: [
        {
            stat: "hpMax", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        },
        {
            stat: "spd", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        },
        {
            stat: "dmg", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        },
        {
            stat: "atkSpd", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        },
        {
            stat: "staminaMax", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        },
        {
            stat: "dashDist", operation: eMod.MUL, value: random_range(0.6 , 1.4)
        }
    ]
}
]

function applyMod(statName, type, amnt){
	var currentStat = variable_instance_get(oPlayer, statName)
	var newStat = op(type, currentStat, amnt)
	variable_instance_set(oPlayer.id, statName, newStat)
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