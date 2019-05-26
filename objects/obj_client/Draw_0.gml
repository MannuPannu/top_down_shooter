/// @description  Draw all sprites in level

// set the X and Y of the client so the room "follows" our player
x = clientx;
y = clienty;

// Now loop through all active sprites and draw them
var index = 0;
var xx, yy, sp, spindex, col;

for(var i = 0; i < sprites; i++;)
{
	xx = allsprites[| index++];
	yy = allsprites[| index++];
	sp = allsprites[| index++];
	spindex = allsprites[| index++];
	col = allsprites[| index++];
	name = allsprites[| index++];
	
	var gun_angle = allsprites[| index++];
	
	draw_sprite_ext(sp, spindex, xx, yy, 1, 1, 0, col, 1); 
	
	draw_sprite_ext(spr_gun, 0, xx, yy, 1, 1, gun_angle, c_white, 1);
	
	////Draw bullets
	var no_bullets = allsprites[| index++];
	
	show_debug_message(no_bullets);
	
	for(var j = 0; j < no_bullets; j++){
		var bx = allsprites[| index++];
		var by = allsprites[| index++];
		
		draw_sprite(spr_bullet, 0, bx, by);
	}
	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(xx + 16, yy - 20, name);
}






