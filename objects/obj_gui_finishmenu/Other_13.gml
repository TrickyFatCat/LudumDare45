/// @description Insert description here

// Inherit the parent event
event_inherited();

// Draw timer
draw_set_font(fnt_text_small);
set_align(fa_left, fa_center);
draw_text_outline(guiWidth * 0.62, guiHeight / 2, c_black, c_white, "TIME");
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.65, guiHeight / 2 + 20, c_black, c_white, string(global.PlayTime / 60));

// Draw kills
draw_set_font(fnt_text_small);
set_align(fa_right, fa_center);
draw_text_outline(guiWidth * 0.38, guiHeight / 2, c_black, c_white, "SCORE");
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.338, guiHeight / 2 + 20, c_black, c_white, string(global.Score));