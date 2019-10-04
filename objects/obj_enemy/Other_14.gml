/// @description StateMoveController

var _pathExists = mp_grid_path(global.PathGrid, path, x, y, targetX, targetY, true);
		
if (_pathExists)
{
	path_start(path, pathSpeed, path_action_stop, false);
}
else
{
	currentState = EntityState.TargetSearch;
}
		
if (path_get_length(path) > 0)
{
	pathSpeed = global.TimeFactor * velocityCurrent + (0.5 * sqr(global.TimeFactor) * acceleration);
	velocityCurrent = min(velocityCurrent + acceleration * global.TimeFactor, velocityMax);
}
else
{
	pathSpeed = 0;
	velocityCurrent = 0;
	currentState = EntityState.Action;
}