/// @description BattleStateSwitcher

switch (global.BattleState)
{
	case BattleState.Inactive:
	break;
			
	case BattleState.Start:
		battleStartTimer += global.TimeFactor;
		soundTimer += global.TimeFactor;
		
		var _soundTime = set_time(1);
		var _checkStartTimer = check_timer(battleStartTimer, battleStartTime);
		var _playSound = check_timer(soundTimer, _soundTime)
	
		if (_playSound)
		{
			PlaySound(sfx_timer);
			soundTimer = 0;
		}
				
		if (_checkStartTimer)
		{
			battleStartTimer = 0;
			global.BattleState = BattleState.Active;
			PlaySound(sfx_start);
		}
	break;
			
	case BattleState.Active:
		if (!audio_is_playing(global.Music)) && (!audio_is_playing(sfx_start)) && global.Player.currentState < PlayerState.Transcendence
		{
			global.Music = choose(bgm_battle00, bgm_battle01, bgm_battle02, bgm_battle03);
			audio_sound_gain(global.Music, 0, 0);
			audio_play_sound(global.Music, 1000, true);
			audio_sound_gain(global.Music, 0.5, 1500);
		}
		
		global.PlayTime += global.TimeFactor;
		
		if (array_length_1d(difficultyIncreaseTime) - 1 >= global.DifficultyLevel)
		{
			var _checkTimer = check_timer(global.PlayTime, difficultyIncreaseTime[global.DifficultyLevel])
			
			if (_checkTimer)
			{
				global.DifficultyLevel++;
			}
		}
	break;
			
	case BattleState.End:
		if (!audio_is_playing(bgm_defeat))
		{
			audio_play_sound(bgm_defeat, 0, false);
		}
		obj_gui.currentState = InterfaceState.TransitionOut;
		global.BattleState = BattleState.Inactive;
	break;
}