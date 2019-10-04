/// @description ProjectileSpawnController

// Parameters
var _velocityNoiseFactor = 0.1;

// Calculate spread
if (spreadIsUniform)
{
	CalculateUniformSpread();
}
else
{
	CalculateRandomSpread();
}

// Spawn projectiles
for (var i = 0; i < bulletNumber; i++)
{
	var _bullet = SpawnBullet();
	_bullet.directionCurrent = bulletSpawnDirection + uniformSpreadStep * i;
	SetProjectileParameters(_bullet, _velocityNoiseFactor);
}