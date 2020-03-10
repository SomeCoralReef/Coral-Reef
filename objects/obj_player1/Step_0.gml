/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))) {
	xspeed -= x_accel_left;	
}
if (keyboard_check(ord("D"))) {
	xspeed += x_accel_right;
}
var sy = 0;
global.player_num = 1;
event_inherited();
