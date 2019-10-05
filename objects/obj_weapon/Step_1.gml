event_inherited();

// Rotate weapon
rotationOffsetX = lengthdir_x(rotationOffset, directionCurrent);
rotationOffsetY = lengthdir_y(rotationOffset, directionCurrent);

// Flip weapon sprite
if (directionCurrent > 90 && directionCurrent < 270)
{
	drawScaleY = -1;
}
else
{
	drawScaleY = 1;
}

// Set draw angle
drawAngle = directionCurrent;

var _deltaX = lengthdir_x(bulletSpawnPointOffset, directionCurrent);
var _deltaY = lengthdir_y(bulletSpawnPointOffset, directionCurrent);
var _y = y - offsetZ;

bulletSpawnPointX = x + _deltaX;
bulletSpawnPointY = _y + _deltaY;

switch (bulletObjectParent)
{
	case obj_hitscan:
		SetBulletTransform(hitscanObjects);
	break;

	case obj_laser:
		SetBulletTransform(laserObjects);
	break;
}