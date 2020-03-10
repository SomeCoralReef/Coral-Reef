/// @description Insert description here
// You can write your code in this editor
time_since_create++;
curr_num_platforms = instance_number(obj_platform);
var targ_platforms = 30;
if (curr_num_platforms < targ_platforms) { // if we're starting from 0, the room just started and we need to populate to max
	targ_platforms = max_number_of_platforms;
} else { // otherwise, we're down to our last few platforms and need to spawn some to get back to minimum
	targ_platforms = min_number_of_platforms;	
}

//var i = curr_number_of_platforms;
//for (var i = curr_number_of_platforms; curr_number_of_platforms < target_platforms; curr_number_of_platforms ++){
//	show_debug_message(curr_number_of_platforms);
//	randomx = irandom_range(global.bufferx, room_width - global.bufferx);
//	randomy = irandom_range(global.buffery, room_height - global.buffery);
//		if(randomx == global.legalPositionx && randomy == global.legalPositiony){
//			//If the irandomrange is in legal objects, then run this code. If it isnt legal, rerun the for loop
//			var new_platform = instance_create_layer(randomx,randomy,"Instances", obj_platform);
//	}
//}


randomx = irandom_range(global.bufferx, room_width - global.bufferx);
randomy = irandom_range(global.buffery, room_height - global.buffery);

 if(randomx != obj_platform.x + sprite_get_width(spr_platform3) && 
		randomx != obj_platform.y - sprite_get_width(spr_platform3) &&
		randomy != obj_platform.y + sprite_get_height (spr_platform3)&&
		randomy != obj_platform.y - sprite_get_height(spr_platform3)){

while (curr_num_platforms < targ_platforms && time_since_create > 30) {
	
				instance_create_layer(randomx,randomy,"instances", obj_platform);
				show_debug_message(string(randomx) + string(randomy));
				curr_num_platforms++
				time_since_create = 0;
}
		}

