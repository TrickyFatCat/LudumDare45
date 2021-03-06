/// @description Insert description here

// Inherit the parent event
event_inherited();

// User events
#macro DrawHUD event_user(7)

// States
enum HUDState
{
	Active,
	PauseIn,
	Pause,
	PauseOut
}

hudCurrentState = HUDState.Active;

// Pause Menu Items
menuY = guiHeight - guiMarginY;
menuTargetX = menuFoldedX;
menuIsActive = false;

// Main Page Items
enum PauseMenuItem
{
	Quit,
	Fullscreen,
	Return
}

menuItem[PauseMenuItem.Return] = "Return";
menuItem[PauseMenuItem.Fullscreen] = "Fullscreen";
menuItem[PauseMenuItem.Quit] = "Quit";

menuItemsCount = array_length_1d(menuItem);

menuActiveItem = 2;
fullScreenItemIndex = PauseMenuItem.Fullscreen;

hudAlpha = 1;

showStartBattleText = false;
startBattleTextTimer = 0;

if (audio_is_playing(bgm_menu))
{
	audio_stop_sound(bgm_menu);
}