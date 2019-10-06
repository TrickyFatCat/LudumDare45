/// @description Insert description here

// Inherit the parent event
event_inherited();

isShooting = true;

if (activeWeapon.currentCastState == CastState.Process)
{
	EnableFlash(c_purple, 1);
}

if (activeWeapon.shotCount = 1)
{
	activeWeapon.shotCount = 0;
	currentState = EntityState.TargetSearch;
}