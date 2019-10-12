with (activeWeapon)
{
	x = weaponOwner.x + rotationOffsetX;
	y = weaponOwner.y + rotationOffsetY;
}


if (!isShooting)
{
	activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
}

activeWeapon.isShooting = isShooting;

if global.Player.currentState = PlayerState.Inactive && currentState > EntityState.Spawn && healthPointsCurrent > 0
{
	currentState = EntityState.Inactive;
	isShooting = false;
	sprite_index = spriteIdle;
}