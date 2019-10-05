/// @description Insert description here

if (healthPointsCurrent <= 0 && (!timerIsTicking))
{
	timerIsTicking = true;
}

if (timerIsTicking)
{
	explosionDelayTimer += global.TimeFactor;
	
	MoveObject();
	
	velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	
	var _timeIsOver = check_timer(explosionDelayTimer, explosionDelayTime);
	
	if (_timeIsOver)
	{
		instance_destroy();
	}
}