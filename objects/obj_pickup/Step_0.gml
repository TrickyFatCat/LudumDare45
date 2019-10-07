/// @description Insert description here

// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case PickUpState.Drop:
	break;
	
	case PickUpState.Idle:
		lifespanTimer += global.TimeFactor;
		
		var _timeIsOver = check_timer(lifespanTimer, lifespanTime);
		
		if (_timeIsOver)
		{
			currentState = PickUpState.Destroy;
		}
	break;
	
	case PickUpState.Destroy:
		var _destroyStep = set_step(1);
		
		drawAlpha = approach_timefactor(drawAlpha, 0, _destroyStep);
		
		if (drawAlpha == 0)
		{
			instance_destroy();
		}
	break;
}