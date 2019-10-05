/// @description Insert description here

// Inherit the parent event
event_inherited();

switch (currentState)
{
	case EntityState.Idle:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateIdle;
	break;
	
	case EntityState.TargetSearch:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateTargetSearch;
	break;
	
	case EntityState.Move:
		ChangeSpriteTo(spriteRun);
		ExecuteStateMove;
	break;
	
	case EntityState.Action:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateAction;
	break;
	
	case EntityState.Trancendence:
		ChangeSpriteTo(spriteIdle);
		ExecuteStateTrancendence;
	break;
	
	case EntityState.Death:
		ExecuteStateDeath;
	break;
}