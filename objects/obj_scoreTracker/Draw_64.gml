/// @description Insert description here
// You can write your code in this editor

draw_set_font(font0);
var ww = window_get_width();

// draw text for player 1 being gone
draw_set_halign(fa_left);
draw_text_transformed_colour(10,60,global.player1Score,3,3,0,c_blue,c_blue,c_teal,c_teal,1);


// draw text for player 2 being gone
draw_set_halign(fa_right);
draw_text_transformed_colour(ww-10,60,global.player2Score,3,3,0,c_blue,c_blue,c_teal,c_teal,1);
