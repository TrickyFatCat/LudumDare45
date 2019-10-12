/// @description Insert description here

// Inherit the parent event
event_inherited();


if (startDelay)
{
	var _delayTime = set_time(0.5);
	
	delayTimer += global.TimeFactor;
	
	var _timeIsOver = check_timer(delayTimer, _delayTime);
	
	if (_timeIsOver)
	{
		global.BattleState = BattleState.End;
	}
}

if visible
{
	/// @description Insert description here
if global.Camera.cameraShakeValue <= 0.25
{
	ApplyShakeToCamera(false, 2);
}

if (!dealingDamage)
{
	dealingDamage = true;
}	
}