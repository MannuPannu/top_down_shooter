if(fire && (current_time > next_fire_time)){
	var bullet = instance_create_layer(x + lengthdir_x(50, image_angle),
				y + lengthdir_y(50, image_angle), "guns", obj_bullet);
		
	bullet.speed = bullet_spd;
	bullet.direction = image_angle;	
	bullet.gun_handle = self;
	
	//Add it to guns bullets list, ugly maybe but nice to send it over network
	ds_list_add(bullets, bullet);
	
	next_fire_time = current_time + fire_rate;
	kick_back_length = 10;
}

x += lengthdir_x(-kick_back_length, image_angle);
y += lengthdir_y(-kick_back_length, image_angle);

kick_back_length = max(0, kick_back_length - 1);



