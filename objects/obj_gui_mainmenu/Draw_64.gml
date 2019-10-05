/// @description Insert description here

// Inherit the parent event
event_inherited();

var _centerWidth = display_get_gui_width() / 2;
var _centerHeight = display_get_gui_height() * 0.25;
var _scale = 0.5;

draw_sprite_ext(spr_logo_ts, image_index, _centerWidth, _centerHeight, _scale, _scale, 0, image_blend, 1);
