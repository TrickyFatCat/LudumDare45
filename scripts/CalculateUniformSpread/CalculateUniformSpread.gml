if (spreadAngleCurrent != 360)
{
	uniformSpreadStep = spreadAngleCurrent / (bulletNumber - 1);
}
else
{
	uniformSpreadStep = spreadAngleCurrent / bulletNumber;
}

bulletSpawnDirection = directionCurrent - spread;