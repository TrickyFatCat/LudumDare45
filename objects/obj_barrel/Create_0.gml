/// @description Insert description here

// Inherit the parent event
event_inherited();

weaponData = noone;
explosionRadius = 96;
damage = 30;

explosionDelayTime = set_time(0.4);
explosionDelayTimer = 0;
timerIsTicking = false;

velocityCurrent = 2;
groundFriction = 0.075;

currentState = EntityState.Spawn;

idleTime = set_time(0.4);
idleTimer = 0;

drawAlpha = 0;
SetDissolveSettings(spr_dissolve_00,image_index, c_orange, c_yellow, 0.1)