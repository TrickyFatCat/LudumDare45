/// @param bulletsArray

var _bulletsArray = argument0;

for (var i = 0; i < bulletNumber; i++)
{
	_bulletsArray[i] = SpawnBullet();
	with (_bulletsArray[i])
	{
		collisionTargets = other.collisionTargets;
		drawScaleYMax = other.hitscanScaleY;
		x = other.bulletSpawnPointX;
		y = other.bulletSpawnPointY;
	}
}

return _bulletsArray;