/// @description Insert description here

// Inherit the parent event
event_inherited();

/// Parameters
var _speed = set_step(0.25);

/// Sequence
switch hudCurrentState
{
	case HUDState.Active:
		playUiSound = false;
		
		if (obj_gameManager.keyPause)
		{
			hudCurrentState = HUDState.PauseIn;
		}
	break;
	
	case HUDState.PauseIn:
		SetGameState(GameState.Paused);
		
		menuIsActive = true;
		menuTargetX = guiMarginX;
		
		global.TimeFactor = approach(global.TimeFactor, 0, _speed);
		
		menuBackGroundAlpha = lerp(0.75, 0, global.TimeFactor);
		logoAlpha = lerp(1, 0, global.TimeFactor);
		hudAlpha = lerp(0, 1, global.TimeFactor);
		
		if (global.TimeFactor == 0)
		{
			hudCurrentState = HUDState.Pause;
		}
	break;
	
	case HUDState.Pause:
		playUiSound = true;
		CheckButtonActions;
	
		if (obj_gameManager.keyPause)
		{
			hudCurrentState = HUDState.PauseOut;
		}
	break;
	
	case HUDState.PauseOut:
		menuTargetX = menuFoldedX;
	
		global.TimeFactor = approach(global.TimeFactor, 1, _speed);
		
		menuBackGroundAlpha = lerp(0.75, 0, global.TimeFactor);
		logoAlpha = lerp(1, 0, global.TimeFactor);
		hudAlpha = lerp(0, 1, global.TimeFactor);
		
		if (global.TimeFactor == 1 && menuX < 150)
		{
			hudCurrentState = HUDState.Active;
			SetGameState(GameState.Active);
		}
	break;
}