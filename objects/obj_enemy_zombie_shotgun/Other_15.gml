/// @description Insert description here

// Inherit the parent event
event_inherited();

isShooting = true;

if (activeWeapon.shotCount = 1)
{
	activeWeapon.shotCount = 0;
	currentState = EntityState.TargetSearch;
}