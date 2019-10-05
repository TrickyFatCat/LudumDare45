/// @description Insert description here

// Inherit the parent event
event_inherited();

with (activeWeapon)
{
	x = weaponOwner.x + rotationOffsetX;
	y = weaponOwner.y + rotationOffsetY;
}