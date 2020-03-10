max_number_of_platforms = 30;
curr_num_platforms = 0;
min_number_of_platforms = 5;

time_since_create = 0;


var w = sprite_get_width(spr_platform);
var h = sprite_get_height(spr_platform);
global.bufferx = w/2;
global.buffery = w*3;

//take a look at !obj_platform.x

