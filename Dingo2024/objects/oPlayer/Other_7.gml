if sprite_index == sDeath{
	image_speed = 0
	image_index = image_number-1
	instance_create_depth(room_width/2, room_height/2, 0, oRestart)
}