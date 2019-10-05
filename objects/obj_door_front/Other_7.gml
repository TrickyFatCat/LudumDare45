/// @description Insert description here

if (currentState = DoorState.TransitionOpen)
{
	currentState = DoorState.Opened;
	image_index = image_number - 1;
}
else if (currentState = DoorState.TranstionClose)
{
	currentState = DoorState.Closed;
	image_index = 0;
}