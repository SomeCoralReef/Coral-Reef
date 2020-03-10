 /// @description Insert description here
// You can write your code in this editor

var numplayers = instance_number(obj_player);
var new_y = 0;

for (i = 0; i < numplayers; i++){
	var p = instance_find(obj_player, i); 
	if (!p.deaded) {
		alivecamy = lerp  (p.y, new_y,0.7);
		new_y = alivecamy;
		break;
	} 
}


cam_y = lerp(camera_get_view_y(view_camera[0]), new_y, 0.6);


cam_y = max(cam_y, 0);
cam_y = min(cam_y, room_height - camera_get_view_height(view_camera[0]));



x = 0;


camera_set_view_pos(view_camera[0], x, cam_y);
