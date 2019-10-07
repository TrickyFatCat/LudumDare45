/// @description Insert description here

// Inherit the parent event
event_inherited();

var _waitTime = set_time(1);

if (activeWeapon.shotCount == 1)
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
	aimTimer += global.TimeFactor;
	
	with (activeWeapon)
	{
		laserSightEnabled = true;
		lasersightAlpha = 1
	}
	
	var _shoot = check_timer(aimTimer, aimTime)
	
	if (_shoot)
	{
		isShooting = true;
		aimTimer = 0;
	}
}

if (activeWeapon.currentCastState == CastState.Process)
{
	with (activeWeapon)
	{
		lasersightAlpha = lerp_timefactor(lasersightAlpha, 1, castProgress);
		
	}
}
else
{
	activeWeapon.lasersightAlpha = 0;
}