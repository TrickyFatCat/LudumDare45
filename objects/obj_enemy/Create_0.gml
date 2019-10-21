/// @description Insert description here

// Inherit the parent event
event_inherited();

// User Events
#macro CheckEntityHP			event_user(0)
#macro PlaceEnemyWeapon			event_user(1)

#macro ExecuteStateIdle			event_user(2)
#macro ExecuteStateTargetSearch event_user(3)
#macro ExecuteStateMove			event_user(4)
#macro ExecuteStateAction		event_user(5)
#macro ExecuteStateTrancendence event_user(6)
#macro ExecuteStateDeath		event_user(7)
#macro StopMoving				event_user(8)

// Test Timers
testTimer = 0;
testTime = set_time(5);

// Add path
path = path_add();
pathToTarget = noone;
pathSpeed = 0.0;
targetDirection = 0.0;
targetX = 0.0;
targetY = 0.0;

// Add weapon
StoreEnemyWeaponData();
activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
activeWeapon.visible = false;

// Base states
enum EntityState
{
	Spawn,
	Idle,
	TargetSearch,
	Move,
	Action,
	Trancendence,
	Death,
	Inactive
}

currentState = EntityState.Spawn;

idleTime = set_time(0.4);
idleTimer = 0;

// Targets
enum TargetToSearch
{
	Self,
	Player
}

currentTarget = TargetToSearch.Player;

drawAlpha = 0;
SetDissolveSettings(spr_dissolve_00,image_index, c_orange, c_yellow, 0.1)

waitTimer = 0;
cooldownTimer = 0;

moveSoundTimer = 0