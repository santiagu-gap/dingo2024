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
		if dashSpd>=1{
			effect_create_below(ef_smoke, x, y, 0, c_white)
		}
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
#endregion

//Sprite control
centerY = y + centerYOffset

aimDir = point_direction(x, centerY, mouse_x, mouse_y)

face = round(aimDir/90)
if face == 4 { face = 0; }

    //Setting the sprites
    image_index = 0 // to put in the animate option when actual sprites in
    sprite_index = sprite[face]