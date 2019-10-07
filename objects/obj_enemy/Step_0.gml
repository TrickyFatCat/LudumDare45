/// @description Insert description here

// Inherit the parent event
event_inherited();

var _spawnTime = 1.5;

switch (currentState)
{
	case EntityState.Spawn:
		isInvulnerable = true;

		ExecuteDissolveIn(_spawnTime);
	
		with (activeWeapon)
		{
			ExecuteDissolveIn(_spawnTime);
		}
	
		if (dissolvePower == 1)
		{
			currentState = EntityState.Idle;
		}
	break;
	
	case EntityState.Idle:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateIdle;
		CheckEntityHP;
	break;
	
	case EntityState.TargetSearch:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateTargetSearch;
		CheckEntityHP;
	break;
	
	case EntityState.Move:
		ChangeSpriteTo(spriteRun);
		ExecuteStateMove;
		isShooting = false;
		CheckEntityHP;
		moveSoundTimer += global.TimeFactor;
		
		var _stepTime = set_time(0.25);
		
		var _timeIsOver = check_timer(moveSoundTimer, _stepTime)
		
		if (_timeIsOver)
		{
			moveSoundTimer = 0;
			
			PlaySoundAt(sfx_step, 128, false);
		}
	break;
	
	case EntityState.Action:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateAction;
		CheckEntityHP;
	break;
	
	case EntityState.Trancendence:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateTrancendence;
	break;
	
	case EntityState.Death:
		ExecuteStateDeath;
	break;
}