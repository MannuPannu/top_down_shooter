/// @function				SendPlayerDate(data, state);
/// @description			Send a client data to server
/// @param	{real}	gun_angle		The angle of the gun


// Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
buffer_seek(buff, buffer_seek_start, 0);

// Write the command, the key and the UP/DOWN state into the buffer
buffer_write(buff, buffer_s16, CLIENT_DATA);
buffer_write(buff, buffer_s16, argument0); //Gun angle

// Send this to the server
network_send_packet(client, buff, buffer_tell(buff));



