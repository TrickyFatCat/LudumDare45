/// @description Insert description here

// Inherit the parent event
event_inherited();

isShooting = true;

if (activeWeapon.shotCount = 2)
{
	activeWeapon.shotCount = 0;
	currentState = EntityState.TargetSearch;
}