/// @description LaserStatesController

if (isShooting)
{
	for (var i = 0; i < bulletNumber; i++)
	{
		if (laserObjects[i].currentState == LaserState.Idle || laserObjects[i].currentState == LaserState.Start)
		{
			laserObjects[i].currentState = LaserState.Start;
		}
	}
}
else
{
	for (var i = 0; i < bulletNumber; i++)
	{
		if (laserObjects[i].currentState == LaserState.Start || laserObjects[i].currentState == LaserState.Active)
		{
			laserObjects[i].currentState = LaserState.Finish;
		}
	}
}

