v_vel = 0;
h_vel = 0;
gun.fire = false;

#region // Input
if(keys[UP_KEY]) {
	v_vel = -spd;	
} else if(keys[DOWN_KEY]) {
	v_vel = spd;
}

if(keys[LEFT_KEY]){
	h_vel = -spd;	
} else if(keys[RIGHT_KEY]){
	h_vel = spd;	
}

if(keys[MOUSE_LEFT]){
	gun.fire = true;
}
#endregion

#region // Collision detection

targetX = x + h_vel;
targetY = y + v_vel;

//Check for horizontal collision
if(!place_meeting(targetX, y, obj_wall)){
	x += h_vel;	
}else{
	//Find direction of movement
	mov_step = sign(h_vel) * 0.1;
	
	while(!place_meeting(x + mov_step, y, obj_wall)){
		x += mov_step;
		
		mov_step = sign(h_vel) * 0.1;
	}
	
	h_vel = 0;
}

//Check for vertical collision
if(!place_meeting(x, targetY, obj_wall)){
	y += v_vel;	
} else {
	//Find direction of movement
	mov_step = sign(v_vel) * 0.1;
	
	while(!place_meeting(x, y + mov_step, obj_wall)){
		y += mov_step;
		
		mov_step = sign(v_vel) * 0.1;
	}
	
	v_vel = 0;
}

#endregion

#region //Gun controll
		
	gun.x = x;
	gun.y = y;

#endregion