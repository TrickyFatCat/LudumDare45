/// @description Insert description here

// Inherit the parent event
event_inherited();



switch (currentState)
{
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