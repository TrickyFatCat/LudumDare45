/// @description Insert description here

// Inherit the parent event
event_inherited();

if (weaponData != noone)
{
	var _arrayLength = array_length_1d(weaponData);

	for (var i = 0; i < _arrayLength; i++)
	{
		ds_map_destroy(weaponData[i]);
	}
}