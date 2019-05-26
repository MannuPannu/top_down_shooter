/// @description Insert description here
// You can write your code in this editor

PlayerName="";
global.PlayerTotal++;        

// 5 keys: left, right and jump, up , down (could be more)
for(var i = 0; i < 6; i++;)
{
	keys[i] = false;
}

h_vel = 0;
v_vel = 0;

spd = 10;

gun = instance_create_layer(x, y, "guns", obj_gun);


