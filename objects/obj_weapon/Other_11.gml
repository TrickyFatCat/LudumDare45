/// @description ProjectileSpawnController

// Parameters
var _velocityNoiseFactor = 0.1;

// Calculate spread
if (spreadIsUniform)
{
	CalculateUniformSpread();
}

// Spawn projectiles
for (var i = 0; i < bulletNumber; i++)
{
	if (!spreadIsUniform)
	{
		CalculateRandomSpread();
	}
	
	var _bullet = SpawnBullet();
	
	_bullet.directionCurrent = bulletSpawnDirection + uniformSpreadStep * i;
	SetProjectileParameters(_bullet, _velocityNoiseFactor);
}