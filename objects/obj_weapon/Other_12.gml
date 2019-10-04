/// @description HitscanController

// Calculate spread
if (spreadIsUniform)
{
	CalculateUniformSpread();
}
else
{
	CalculateRandomSpread();
}

// Sequence
for (var i = 0; i < bulletNumber; i++)
{
	with (hitscanObjects[i])
	{
		directionCurrent = other.bulletSpawnDirection + other.uniformSpreadStep * i;
		drawAngle = directionCurrent;
		damage = other.damage;
		heal = other.heal;
		currentState = HitscanState.Active;
	}
}