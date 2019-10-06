/// @description Insert description here

// Inherit the parent event
event_inherited();

weaponData = noone;
explosionRadius = 64;
damage = 5;

explosionDelayTime = set_time(0.4);
explosionDelayTimer = 0;
timerIsTicking = false;

velocityCurrent = 2;
groundFriction = 0.075;

enum BarrelState
{
	Spawn,
	Idle,
	Active
}

currentState = BarrelState.Active;

idleTime = set_time(0.4);
idleTimer = 0;