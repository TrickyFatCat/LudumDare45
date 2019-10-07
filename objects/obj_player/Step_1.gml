/// @description Insert description here

// Inherit the parent event
event_inherited();

ChekPlayerHP;

if (global.CurrentInput == InputMethod.Gamepad)
{
	activeWeapon.laserSightEnabled = true;
}
else
{
	activeWeapon.laserSightEnabled = false;
}