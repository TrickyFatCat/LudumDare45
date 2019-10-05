/// @description LaserSpreadHandler

if (spreadIsUniform)
{
	CalculateUniformSpread();
}
else
{
	bulletSpawnDirection = directionCurrent;
	uniformSpreadStep = 0;
}

for (var i = 0; i < bulletNumber; i++)
{
	var _bullet = laserObjects[| i];
	
	_bullet.directionCurrent = bulletSpawnDirection + uniformSpreadStep * i;
}