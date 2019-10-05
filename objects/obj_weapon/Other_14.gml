/// @description LaserDamageController

if (isShooting) && (checkShootPause)
{
	for (var i = 0; i < bulletNumber; i++)
	{
		var _bullet = laserObjects[| i];
		
		if (_bullet.currentState == LaserState.Active)
		{
			with (_bullet)
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
		var _bullet = laserObjects[| i];
		
		_bullet.dealingDamage = false;
	}
}