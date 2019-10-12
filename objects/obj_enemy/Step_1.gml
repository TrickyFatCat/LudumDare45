/// @description Insert description here

// Inherit the parent event
event_inherited();

activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);

activeWeapon.isShooting = isShooting;

if global.Player.currentState = PlayerState.Inactive && currentState > EntityState.Spawn && healthPointsCurrent > 0
{
	currentState = EntityState.Inactive;
	isShooting = false;
	sprite_index = spriteIdle;
}