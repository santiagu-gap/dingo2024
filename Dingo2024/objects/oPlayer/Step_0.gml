//Inputs
rightKey = keyboard_check(ord("D"))
leftKey = keyboard_check(ord("A"))
upKey = keyboard_check(ord("W"))
downKey = keyboard_check(ord("S"))

//Mouvement
	//direction
	var _horizKey = rightKey - leftKey
	var _vertKey = downKey - upKey
	moveDir = point_direction(0, 0, _horizKey, _vertKey)
	
	//Dash
	if mouse_check_button_pressed(mb_right) and dashSpd < 1 and stamina >= 100{
		dashSpd = dashDist
		stamina -= 100
	}else{
		dashSpd += (0-dashSpd)/10
		stamina = clamp(stamina+1, 0, staminaMax)
	}
	
	//speeds
	var _spd = 0
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey)
	_inputLevel = clamp(_inputLevel, 0 , 1)
	_spd = (spd+dashSpd) * _inputLevel //here also modifiers for the speed
	
	xSpd = lengthdir_x(_spd, moveDir)
	ySpd = lengthdir_y(_spd, moveDir)
	
	
	//Move 
	move_and_collide(xSpd, ySpd, oWall)
	