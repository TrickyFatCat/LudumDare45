/// @description StateIdleController

idleTimer += global.TimeFactor;

var _timeIsOver = check_timer(idleTimer, idleTime);

if (_timeIsOver)
{
	currentState = EntityState.TargetSearch;
}