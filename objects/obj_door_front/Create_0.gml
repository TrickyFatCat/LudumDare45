/// @description Insert description here

// Inherit the parent event
event_inherited();

enum DoorState
{
	Closed,
	TransitionOpen,
	Opened,
	TranstionClose
}

currentState = DoorState.Closed;

image_speed = 0;

doorCloseTimer = 0;
doorCloseTime = set_time(5);