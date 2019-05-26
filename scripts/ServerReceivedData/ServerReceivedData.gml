/// @function		ServerReceivedData();
/// @description	Read incoming data to the server from a connected socket

// get the buffer the data resides in
var buff = async_load[? "buffer"];
// read ythe command 
var cmd = buffer_read(buff, buffer_s16);
// Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
var sock = async_load[? "id"];
// Look up the client details
var inst = Clients[? sock];
// Is this a KEY command?
if cmd == KEY_CMD
	{
    // Read the key that was sent
    var key = buffer_read(buff, buffer_s16 );
    // And it's up/down state
    var updown = buffer_read(buff, buffer_s16 );
    // translate keypress into an index for our player array.
	switch(key){
		case vk_left:
			key = LEFT_KEY;
		break;
		case vk_right:
			key = RIGHT_KEY;
		break;
		case vk_down:
			key = DOWN_KEY;
		break;
		case vk_up:
			key = UP_KEY;
		break
		case mb_left:
			key = MOUSE_LEFT;
		break;
	}		
    // translate updown into a bool for the player array       
    if updown == 0
		{
        inst.keys[key] = false;
	    }
	else
		{
        inst.keys[key] = true;
		}
	}
// Is this a NAME command?
else if cmd == NAME_CMD    
	{
    // Set the client "name"
		inst.PlayerName = buffer_read(buff, buffer_string);    
		show_debug_message(inst.PlayerName);
	}
else if cmd == PING_CMD
	{
    // keep alive - ignore it
	}
else if (cmd == CLIENT_DATA)
{
	inst.gun.image_angle = buffer_read(buff, buffer_s16 );
}



