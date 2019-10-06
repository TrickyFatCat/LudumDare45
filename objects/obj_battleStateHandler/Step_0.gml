/// @description BattleStateSwitcher

switch (global.BattleState)
{
	case BattleState.Inactive:
	break;
			
	case BattleState.Start:
		battleStartTimer += global.TimeFactor;
				
		var _checkStartTimer = check_timer(battleStartTimer, battleStartTime);
				
		if (_checkStartTimer)
		{
			battleStartTimer = 0;
			global.BattleState = BattleState.Active;
		}
	break;
			
	case BattleState.Active:
		global.PlayTime += global.TimeFactor;
		
		if (array_length_1d(difficultyIncreaseTime) - 1 >= global.DifficultyLevel)
		{
			var _checkTimer = check_timer(global.PlayTime, difficultyIncreaseTime[global.DifficultyLevel])
			
			if (_checkTimer)
			{
				global.DifficultyLevel++;
				show_debug_message(global.DifficultyLevel)
			}
		}
	break;
			
	case BattleState.End:
		obj_gui.currentState = InterfaceState.TransitionOut;
		global.BattleState = BattleState.Inactive;
	break;
}