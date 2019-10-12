/// @description TrancendenceStateController

// Parameters



var _step = set_step(0.25);

audio_stop_sound(global.music);

if (!audio_is_playing(sfx_deathtimer))
{
	audio_play_sound(sfx_deathtimer, 1000, true);
}

trancendenceProgress = approach_timefactor(trancendenceProgress, 1, _step);
drawScaleX = lerp_timefactor(drawScaleX, targetScale, trancendenceProgress);
drawScaleY = abs(drawScaleX);
		
with (activeWeapon)
{
	drawScaleX = other.drawScaleX;
	drawScaleY = other.drawScaleY;
}

EnableFlash(c_red, 0.75)

//show_debug_message(dissolvePower)
		
if (drawScaleX >= targetScale)
{
	var _trancendenceTime = set_time(1);
	
	trancendenceTimer += global.TimeFactor;
	
	var _timeIsOver = check_timer(trancendenceTimer, _trancendenceTime);
	
	if (_timeIsOver)
	{
		currentState = PlayerState.Death;
	}
}
