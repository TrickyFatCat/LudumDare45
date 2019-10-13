/// @description Insert description here

// Inherit the parent event
event_inherited();

if (weaponData != noone)
{
	ClearWeaponData(weaponData);
}

instance_destroy(activeWeapon);

var _drop = choose(obj_pickup_ammo, obj_pickup_health, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone, noone);

if (_drop = obj_pickup_ammo)
{
	instance_create_layer(x, y, layer, _drop);
}
else if (_drop = obj_pickup_health)
{
	instance_create_layer(x, y, layer, _drop);
}

global.Score += scoreAdd;