/// @param bulletsArray

var _bulletsArray = argument0;

for (var i = 0; i < bulletNumber; i++)
{
	with (_bulletsArray[i])
	{
		x = other.bulletSpawnPointX;
		y = other.bulletSpawnPointY;
		directionCurrent = other.directionCurrent;
	}
}