/// @description WeaponPositionController

// Parameters
var _deltaX = lengthdir_x(0, 0);
var _deltaY = lengthdir_y(8, 90);

// Sequence
with (activeWeapon)
{
	x = weaponOwner.x + rotationOffsetX;
	y = weaponOwner.y + rotationOffsetY;
}