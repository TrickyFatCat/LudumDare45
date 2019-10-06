/// @description Insert description here

// Inherit the parent event
event_inherited();

if (weaponData != noone)
{
	ClearWeaponData(weaponData);
}

instance_destroy(activeWeapon);