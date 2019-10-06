switch currentState
{
	case TriggerState.Idle:
	break;
	
	case TriggerState.Active:
		ExecuteTriggerAction;
	break;
	
	case TriggerState.InActive:

	break;
}