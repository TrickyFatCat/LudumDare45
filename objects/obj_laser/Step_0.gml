/// @description LaserController

// Inherit the parent event
event_inherited();

switch currentState
{
	case LaserState.Idle:
	break;

	case LaserState.Start:
		ExecuteStartSequence;
	break;
			
	case LaserState.Active:
	break;
			
	case LaserState.Finish:
		dealingDamage = false;
		ExecuteEndSequence;
	break;
}

//show_debug_message(currentState)
drawAngle = directionCurrent;
drawScaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
SetCollisionSize();