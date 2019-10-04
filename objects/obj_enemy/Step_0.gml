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
		ExecuteStateTargetSearch;
	break;
	
	case EntityState.Move:
		ChangeSpriteTo(spriteRun);
		ExecuteStateMove;
	break;
	
	case EntityState.Action:
		ExecuteStateAction;
	break;
	
	case EntityState.Trancendence:
		ExecuteStateTrancendence;
	break;
	
	case EntityState.Death:
		ExecuteStateDeath;
	break;
}