/// @description Insert description here

var _spawnTime = 1.5;

switch (currentState)
{
	case BarrelState.Spawn:
		isInvulnerable = true;
		
		ExecuteDissolveIn(_spawnTime);
	
		with (activeWeapon)
		{
			ExecuteDissolveIn(_spawnTime);
		}
	
		if (dissolvePower == 1)
		{
			currentState = BarrelState.Idle;
		}
	break;
	
	case BarrelState.Idle:
		idleTimer += global.TimeFactor;

		var _timeIsOver = check_timer(idleTimer, idleTime);

		if (_timeIsOver)
		{
			currentState = BarrelState.Active;
		}
	break;
	
	case BarrelState.Active:
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

