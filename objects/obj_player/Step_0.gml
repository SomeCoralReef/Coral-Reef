 if(xspeed < -20){
	x_accel_left = 0;
} else {
	x_accel_left = 0.3;
}

if(xspeed > 20){
	x_accel_right = 0;
} else {
	x_accel_right = 0.3;
}


yspeed += grav;

x_move = round (xspeed);
y_move = round (yspeed);
if(bonked = false){
	if (global.player_num == 1) {
	left = keyboard_check(ord("A"));
	right = (keyboard_check(ord("D"))) 
	
} else if (global.player_num == 2) {
	left = (keyboard_check(vk_left)) 
	right = (keyboard_check(vk_right))
}

	if(left){
		xspeed -= x_accel_left ;	
	}
	if(right){
		xspeed += x_accel_right;
	}



	for(var i = 0; i<abs(xspeed); i++){
		if(x+xspeed >= room_width - sprite_width/2 ){
			xspeed*= -1;
		} else if (x+xspeed <= sprite_width/2){
			xspeed = -xspeed;
		}
	}
}
x += xspeed;


var sy = sign(yspeed);
if (deaded == false && bonked = false){ 
	while (y_move != 0){
		var colliding = false; 
		var collidewith = noone;
		if (sy >= 0){
			collidewith = instance_place(x, y+sy, obj_platform);
			if (collidewith != noone) {	
				if (place_meeting(x, y, collidewith) == false){
					colliding = true;
					collidewith.image_speed = 0.5 ;
					collidewith.alarm[4] = 18;
						}
				
			}	
		}
		if(sy >= 0){
			if(global.player_num = 1){
			collidewith = instance_place(x,y+sy, obj_player2);
			if(collidewith != noone && collidewith!= obj_platform){
				if(place_meeting(x,y,collidewith) == false){
					colliding = true;
					global.player1Score += 1;
					obj_player2.bonked = true;
					instance_create_layer(obj_player2.x,obj_player2.y-32,"instances",obj_starsspawn);
				}
			}
			} else if (global.player_num = 2){
					collidewith = instance_place(x,y+sy, obj_player1);
			if(collidewith != noone && collidewith!= obj_platform){
				if(place_meeting(x,y,collidewith) == false){
					colliding = true;
					global.player2Score += 1;
					obj_player1.bonked = true;
					instance_create_layer(obj_player1.x,obj_player1.y-32,"instances",obj_starsspawn);
				}
				}
			}
		
			}
		
		if (!colliding) { 
			y += sy;
			y_move -= sy;
		}  else {
			y = y + sy;
			yspeed = jump_speed;
		}
	}
}else if(deaded == false && bonked == true){
		y += sy*30;
		show_debug_message("bonked");
			depth = 1;
			xspeed = 0;
			x_accel_left=0;
			x_accel_right=0;
			x_move=0;
			yspeed = 0;
			if(global.player_num =1){
				sprite_index = spr_player1dead
			} else if (global.player_num  =2){
				sprite_index = spr_player2dead
			}
}





if (y >= room_height + sprite_height && respawn_timer < 0 && deaded = false) {
		deaded = true;
		respawn_timer = room_speed;
		yspeed = 0;
		if(global.player_num = 1){
		global.player1Score -= 1;
		} else if (global.player_num = 2){
			global.player2Score-=1
		}
	} 

if (respawn_timer >= 0){
		respawn_timer--;
		if(global.player_num = 1){
			sprite_index = spr_player1;
		} else if (global.player_num = 2){
			sprite_index = spr_player2;
		}
	}
if(respawn_timer == 0){
			yspeed = jump_speed*1.2;
			deaded= false;
			bonked = false;
	} 
	

