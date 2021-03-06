/// @description MainMenuButtonActionsController

switch (menuCurrentAction)
{
	case FinishMenuItem.Restart:
		menuTargetX = menuFoldedX;
		
		if (menuX < menuFoldedX * 0.75)
		{
			currentState = InterfaceState.TransitionOut;
		}
		
		global.PlayTime = 0;
		global.Score = 0;
		audio_stop_sound(bgm_menu);
	break;
	
	case FinishMenuItem.Fullscreen:
		var _isFullscreen = window_get_fullscreen();
		
		if (!_isFullscreen)
		{
			window_set_fullscreen(true);
			
			with (obj_displayManagerPC)
			{
				resolutionZoom = resolutionZoomMax;
				UpdateResolution;
			}
		}
		else
		{
			window_set_fullscreen(false);
			with (obj_displayManagerPC)
			{
				resolutionZoom = max(resolutionZoomMax - 1, 1);
				UpdateResolution;
			}
		}
		
		menuCurrentAction = noone;
	break;
	
	case FinishMenuItem.Quit:
		game_end();
	break;
}
