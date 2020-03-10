/// @description Insert description here
// You can write your code in this editor
ini_open("tuning.ini")

global.gravity = ini_read_real("gameplay","gravity",0.2);

ini_close("tuning.ini");
