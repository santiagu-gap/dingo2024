//Character stats
baseStat = {
	hpMax,
	dmg,
	spd,
	atkSpd,
	staminaMax,
	dashDist	
}
//Inputs
rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

moveDir = 0
xSpd = 0
ySpd = 0
dashSpd = 0
stamina = 300