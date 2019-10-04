/// @description WeaponPositionController

// Parameters
var _deltaX = lengthdir_x(0, 0);
var _deltaY = lengthdir_y(8, 90);

// Sequence
activeWeapon.x = x + _deltaX;
activeWeapon.y = y + _deltaY;