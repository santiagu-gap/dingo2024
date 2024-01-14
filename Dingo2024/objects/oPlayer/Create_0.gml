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

invToggle = 0

moveDir = 0
xSpd = 0
ySpd = 0
dashSpd = 0
stamina = 300

itemSelect = 0
items = [2]
upgrades = []
attackCooldown = 0

//Sprite control
centerYOffset = -5
centerY = 0
face = 3
aimDir = 0

sprite[0] = sCatRight
sprite[1] = sCatUp
sprite[2] = sCatLeft
sprite[3] = sCatDown

sprite_index = sprite[face]