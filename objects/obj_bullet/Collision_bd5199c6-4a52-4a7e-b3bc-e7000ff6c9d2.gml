var pos = ds_list_find_index(gun_handle.bullets, self);

ds_list_delete(gun_handle.bullets, pos);

instance_destroy();