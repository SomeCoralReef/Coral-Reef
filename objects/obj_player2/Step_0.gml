/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left)) {
	xspeed -= x_accel_left;	
}
if (keyboard_check(vk_right)) {
	xspeed += x_accel_right;
}
var sy = 0;
global.player_num = 2;
event_inherited();
