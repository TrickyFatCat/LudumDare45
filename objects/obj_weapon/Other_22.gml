/// @description ShootModeBurstHandler

var _burstTime = set_time(burstPauseTime);
		
if (isShooting)
{
	checkBurstPause = check_timer(burstPauseTimer, _burstTime);
}
		
if (checkBurstPause)
{
	if (shotCount < round(burstShotsNumber))
	{
		isShooting = true;
		ExecuteShootModeNormal;
	}
	else
	{
		isShooting = false;
		burstPauseTimer = 0;
		checkBurstPause = check_timer(burstPauseTimer, _burstTime);
		shotCount = 0;
	}
}
		
burstPauseTimer += global.TimeFactor;