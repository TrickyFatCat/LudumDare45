/// @description Insert description here

draw_set_alpha(hudAlpha);
draw_set_font(fnt_text_heading1);
set_align(fa_center, fa_center);

#region // Draw start counter
var _startTimer = obj_battleStateHandler.battleStartTimer;
var _startTime = obj_battleStateHandler.battleStartTime;

if (global.BattleState == BattleState.Start)
{
	var _timeLeft = round((_startTime - _startTimer) / 60);
			
	if _timeLeft > 0 
			
	{
		draw_tilt_text(fnt_text_heading1, guiWidth / 2, 0, guiHeight * 0.25, 2, c_maroon, c_red, "THE BATTLE STARTS IN");
		draw_tilt_text(fnt_text_heading1, guiWidth / 2, 0, guiHeight * 0.45, 2, c_maroon, c_red, string(_timeLeft));
	}
	else 
	{
		showStartBattleText = true;
		//if (!audio_is_playing(snd_enter_battle)) {
					
		//	audio_play_sound(snd_enter_battle, 1000, false);
		//}
	}
}
		
if (showStartBattleText) 
{
	startBattleTextTimer += global.TimeFactor;
			
	var _textTime = set_time(1.5);
			
	var _timerIsOver = check_timer(startBattleTextTimer, _textTime);
			
	if (!_timerIsOver) 
	{
		draw_tilt_text(fnt_text_heading1, guiWidth / 2, 0, guiHeight / 2, 2, c_maroon, c_red, "HONK-HONK, MOTHERDUCKERS!");
	}
	else 
	{
		showStartBattleText = !showStartBattleText;
	}
}
#endregion

// Draw timer
draw_set_font(fnt_text_small);
set_align(fa_left, fa_center);
draw_text_outline(guiWidth * 0.62, 10, c_black, c_white, "TIME");
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.65, 30, c_black, c_white, string(global.PlayTime / 60));

// Draw kills
draw_set_font(fnt_text_small);
set_align(fa_right, fa_center);
draw_text_outline(guiWidth * 0.38, 10, c_black, c_white, "KILLS");
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.338, 30, c_black, c_white, string(global.Kills));

// Draw ammo
draw_set_font(fnt_text_small);
set_align(fa_left, fa_center);
draw_text_outline(guiWidth * 0.62, guiHeight - 10, c_black, c_white, "AMMO");
draw_set_font(fnt_text_normal);
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.66 - 1, guiHeight - 30, c_black, c_white, global.Player.ammoCurrent);

// Draw HP
draw_set_font(fnt_text_small);
set_align(fa_right, fa_center);
draw_text_outline(guiWidth * 0.38, guiHeight - 10, c_black, c_white, "HEALTH");
draw_set_font(fnt_text_normal);
set_align(fa_center, fa_center);
draw_text_outline(guiWidth * 0.338, guiHeight - 30, c_black, c_white, global.Player.healthPointsCurrent);


// Draw face
set_align(fa_center, fa_center);
var _imageIndex;
var _healthPercent = global.Player.healthPointsCurrent / global.Player.healthPointsMax;
if (_healthPercent > 0.9)
{
	_imageIndex = 0;
}
else if (_healthPercent > 0.75)
{
	_imageIndex = 1;
}
else if (_healthPercent > 0.5)
{
	_imageIndex = 2;
}
else if (_healthPercent > 0.25)
{
	_imageIndex = 3;
}
else if (_healthPercent <= 0.25)
{
	_imageIndex = 4;
}

draw_sprite_ext(spr_face, _imageIndex, guiWidth / 2, guiHeight  - 10, 1, 1, 0, image_blend, hudAlpha)

draw_set_font(fnt_text_normal);
draw_set_alpha(1);