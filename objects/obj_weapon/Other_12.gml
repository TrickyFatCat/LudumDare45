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
	var _bullet = hitscanObjects[| i];
	
	with (_bullet)
	{
		directionCurrent = other.bulletSpawnDirection + other.uniformSpreadStep * i;
		drawAngle = directionCurrent;
		damage = other.damage;
		heal = other.heal;
		currentState = HitscanState.Active;
	}
}