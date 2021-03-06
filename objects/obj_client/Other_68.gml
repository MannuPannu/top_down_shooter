/// @description  Networking code
var eventid = async_load[? "id"];

// Our socket?
if client == eventid
{
	switch (global.NetworkState) {
	    case NETWORK_PLAY:
		    // Read all data....
		    var buff = ds_map_find_value(async_load, "buffer");
		    // Get number of sprites sent
		    sprites = buffer_read(buff, buffer_u32); 
		    // Read out OUR location (allow scrolling maps)
		    clientx = buffer_read(buff,buffer_s16);     //x
		    clienty = buffer_read(buff,buffer_s16);     //y
		    // Now clear the render list, and start filling it up with NEW data!
		    ds_list_clear(allsprites);
	
		    for(var i = 0; i < sprites; i++;)
				{
		        ds_list_add(allsprites, buffer_read(buff,buffer_s16));     //x
		        ds_list_add(allsprites, buffer_read(buff,buffer_s16));     //y
		        ds_list_add(allsprites, buffer_read(buff,buffer_s16));     //sprite_index
		        ds_list_add(allsprites, buffer_read(buff,buffer_s16));     //image_index
		        ds_list_add(allsprites, buffer_read(buff,buffer_s32));     //image_blend        
		        ds_list_add(allsprites, buffer_read(buff,buffer_string));  // player name
				ds_list_add(allsprites, buffer_read(buff,buffer_s16));  // gun angle
			
				var no_bullets = buffer_read(buff,buffer_s16);
				ds_list_add(allsprites, no_bullets);  // number of bullets
			
				for(var j = 0; j < no_bullets; j++){
					ds_list_add(allsprites, buffer_read(buff,buffer_s16));  // bullet x	
					ds_list_add(allsprites, buffer_read(buff,buffer_s16));  // bullet y
				}
			}
	}
	    
}




