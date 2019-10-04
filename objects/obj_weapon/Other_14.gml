/// @description LaserDamageController

if (isShooting) && (checkShootPause)
{
	for (var i = 0; i < bulletNumber; i++)
	{
		if (laserObjects[i].currentState == LaserState.Active)
		{
			with (laserObjects[i])
			{
				dealingDamage = true;
				damage = other.damage;
				heal = other.heal;
			}
		
			if (i == bulletNumber - 1) // It must be here in order to avoid bug with calculations while pressing shoot button rapidly
			{
				ExecuteAdditionalMechanics;
			}
		}
	}
}
else
{
	for (var i = 0; i < bulletNumber; i++)
	{
		laserObjects[i].dealingDamage = false;
	}
}