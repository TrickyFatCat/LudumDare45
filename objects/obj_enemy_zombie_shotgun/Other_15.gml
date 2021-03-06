/// @description Insert description here

// Inherit the parent event
event_inherited();

var _waitTime = set_time(1.5);
var _distanceToPlayer = point_distance(x, y, playerX, playerY);

if (_distanceToPlayer > attackRadiusMax)
{
	currentState = EntityState.TargetSearch;
}
else if (activeWeapon.shotCount == 1)
{
	isShooting = false;
	
	waitTimer += global.TimeFactor;
	
	var _timeIsOver = check_timer(waitTimer, _waitTime)
	
	if (_timeIsOver)
	{
		waitTimer = 0;
		activeWeapon.shotCount = 0;
		currentState = EntityState.TargetSearch;
	}
}
else
{
	isShooting = true;
}