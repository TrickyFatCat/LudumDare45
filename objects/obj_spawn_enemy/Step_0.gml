switch (currentState)
{
	case SpawnPointState.Inactive:
	break;
	
	case SpawnPointState.Active:
	break;
	
	case SpawnPointState.Reveal:
		
		if (revealProgress != 1)
		{
			var _revealStep = set_step(1);
			
			revealProgress = approach_timefactor(revealProgress, 1, _revealStep);
			
			drawAlpha = lerp_timefactor(0, 1, revealProgress);
		}
		else
		{
			currentState = SpawnPointState.Spawn;
			owner = instance_create_layer(x, y, "entities", owner);
		}
	break;
	
	case SpawnPointState.Spawn:
		var _state = owner.currentState;
		
		if (_state == EntityState.Idle)
		{
			currentState = SpawnPointState.Occupied;
		}
	break;
	
	case SpawnPointState.Occupied:
		if (revealProgress != 0)
		{
			var _revealStep = set_step(0.15);
			
			revealProgress = approach_timefactor(revealProgress, 0, _revealStep);
			
			drawAlpha = lerp_timefactor(0, 1, revealProgress);
		}
		
		occupiedTimer += global.TimeFactor;
		
		var _timerIsOver = check_timer(occupiedTimer, occupiedTime);
		
		if (_timerIsOver)
		{
			occupiedTimer = 0;
			currentState = SpawnPointState.Active;
		}

	break;
}