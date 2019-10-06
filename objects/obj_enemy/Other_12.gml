/// @description StateIdleController

var _distanceToPlayer = point_distance(x, y, playerX, playerY);

if (_distanceToPlayer <= aggroRadius)
{
	currentState = EntityState.TargetSearch;
}