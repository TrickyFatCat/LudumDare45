/// @description Insert description here

var _spawnTime = 1.5;

switch (currentState)
{
	case EntityState.Spawn:
		isInvulnerable = true;
		
		ExecuteDissolveIn(_spawnTime);
	
		with (activeWeapon)
		{
			ExecuteDissolveIn(_spawnTime);
		}
	
		if (dissolvePower == 1)
		{
			currentState = EntityState.Idle;
		}
	break;
	
	case EntityState.Idle:
		idleTimer += global.TimeFactor;

		var _timeIsOver = check_timer(idleTimer, idleTime);

		if (_timeIsOver)
		{
			currentState = EntityState.Action;
		}
	break;
	
	case EntityState.Action:
		isInvulnerable = false;
		
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
	break;
}

