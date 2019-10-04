/// @description ShootModeCastHandler

switch (currentCastState)
{
	case CastState.Idle:
		if (isShooting)
		{
			currentCastState = CastState.Process;
		}
	break;
	
	case CastState.Process:
		if (isShooting)
		{
			var _castTime = set_time(castTime);
			var _castStep = 1 / _castTime;
			
			if (castProgress < 1)
			{
				castProgress = approach_timefactor(castProgress, 1, _castStep);
			}
			else
			{
				currentCastState = CastState.Execute;
				castProgress = 0;
			}
		}
		else
		{
			currentCastState = CastState.Idle;
			castProgress = 0;
		}
	break;
	
	case CastState.Execute: 
		if (castExecuteCount > 0)
		{
			isShooting = true;
			ExecuteShootModeNormal;
			if (shotCount == castExecuteCount)
			{
				isShooting = false;
				shotCount = 0;
				currentCastState = CastState.Idle;
			}
		}
		else if (castExecuteCount <= 0)
		{
			if (isShooting)
			{
				ExecuteShootModeNormal;
			}
			else
			{
				currentCastState = CastState.Idle;
			}
		}
	break;
}