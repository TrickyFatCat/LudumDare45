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
			var _revealStep = set_step(0.25);
			
			revealProgress = approach_timefactor(revealProgress, 0, _revealStep);
			
			drawAlpha = lerp_timefactor(0, 1, revealProgress);
		}
		
		var _owenerExists = instance_exists(owner);
		
		if (!_owenerExists)
		{
			owner = noone;
			currentState = SpawnPointState.Active;
		}

	break;
}