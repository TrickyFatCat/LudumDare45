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
	laserObjects[i].directionCurrent = bulletSpawnDirection + uniformSpreadStep * i;
}