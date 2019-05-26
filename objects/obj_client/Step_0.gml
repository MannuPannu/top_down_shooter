
if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	SendKey(vk_up, 1);
} else if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
	SendKey(vk_down, 1);
}

if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))){
	SendKey(vk_left, 1);
} else if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))){
	SendKey(vk_right, 1);
}


if(keyboard_check_released(vk_up) || keyboard_check_released(ord("W"))) {
	SendKey(vk_up, 0);
} else if(keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))){
	SendKey(vk_down, 0);
}

if(keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))){
	SendKey(vk_left, 0);
} else if(keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))){
	SendKey(vk_right, 0);
}

if(mouse_check_button_pressed(mb_left)){
	SendKey(mb_left, 1);	
}

if(mouse_check_button_released(mb_left)){
	SendKey(mb_left, 0);	
}

//Get gun angle of client	
var gun_angle = point_direction(clientx, clienty, mouse_x, mouse_y);
SendPlayerData(gun_angle);
