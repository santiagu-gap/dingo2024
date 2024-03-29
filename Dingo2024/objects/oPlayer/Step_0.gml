#region
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
		if dashSpd>2{
			effect_create_below(ef_smoke, x, y, 0, c_white)
		}
    }

    //speeds
    var _spd = 0
    var _inputLevel = point_distance(0, 0, _horizKey, _vertKey)
    _inputLevel = clamp(_inputLevel, 0 , 1)
    _spd = (spd+dashSpd) * _inputLevel * (!invToggle) //here also modifiers for the speed

    xSpd = lengthdir_x(_spd, moveDir)
    ySpd = lengthdir_y(_spd, moveDir)


    //Move 
    move_and_collide(xSpd, ySpd, oWall)
#endregion

//Sprite control
centerY = y + centerYOffset

aimDir = point_direction(x, centerY, mouse_x, mouse_y)

face = round(aimDir/90)

if face == 4 { face = 0; }
	
//Bullet shooting
if mouse_check_button(mb_left) and attackCooldown<0 and !invToggle{
	direction = aimDir
	shootBullet(items[itemSelect], oEnemyBase, dmg)
	attackCooldown = atkSpd
	show_debug_message(attackCooldown)
}else{
	attackCooldown--
}

hp = clamp(hp, -10, hpMax)
if hp<0{
	x = xprevious
	y = yprevious
	sprite_index = sDeath
}else{
	    //Setting the sprites
	if _spd==0 {  image_index = 0 }// to put in the animate option when actual spritess in
	sprite_index = sprite[face]
}