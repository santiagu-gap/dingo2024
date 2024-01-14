data = variable_clone(global.upgrade[baseindex], 128)
if data.name=="D20 (good luck buddy)"{
	data = {
	    name: "D20 (good luck buddy)", img : sBullet,
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
}else{
	
for (var i = 0; i < array_length(data.mods); ++i) {
	var tmod = data.mods[i]
    switch(tmod.stat){
		case "dmg":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.075, 0.05)
			}else{
				tmod.value += random_range(-1, 1)
			}
		break;
		case "atkSpd":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.015, 0.035)
			}else{
				tmod.value += random_range(-5, 5)
			}
		break;
		case "dashDist":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.075, 0.05)
			}else{
				tmod.value += random_range(-1, 1)
			}
		break;
		case "hpMax":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.15, 0.165)
			}else{
				tmod.value += random_range(-15, 15)
			}
		break;
		case "staminaMax":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.09, 0.075)
			}else{
				tmod.value += random_range(-25, 25)
			}
		break;
		case "spd":
			if tmod.operation==eMod.MUL{
				tmod.value += random_range(-0.06, 0.0385)
			}else{
				tmod.value += random_range(-0.5, 0.5)
			}
		break;
		default:
			
		break;
	}
}

}