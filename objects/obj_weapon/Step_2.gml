/// @description SpawnPositionHandler
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


// Set draw angle
drawAngle = directionCurrent;