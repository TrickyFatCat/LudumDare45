// Inherit the parent event
event_inherited();

//User events
#macro RespondToControls	event_user(0)
#macro MovePlayer			event_user(1)
#macro ChangeSprite			event_user(2)
#macro PullPickups			event_user(3)
#macro PlaceWeapon			event_user(4)
#macro RotateWeapon			event_user(5)
#macro ShootWeapon		    event_user(6)
#macro ChekPlayerHP		    event_user(7)
#macro ExecutePlayerSpawn	event_user(8)
#macro ExecutePlayerDeath	event_user(9)
#macro ChangeWeapon			event_user(10)

//Set shadow
var _shadowScale = 1;
SetShadowParametrs(true, _shadowScale);
shadowAlpha = 0;

//Movement parameters
directionX = 0;
directionY = 0;

//Player states
enum PlayerState
{
	Spawn,
	Idle,
	Run,
	Jump,
	Dash,
	Transcendence,
	Death,
	Inactive
}

currentState = PlayerState.Idle;
sprite_index = spriteIdle;

// PickUp magnet paramentrs
pullDistance = 64;
pullVelocityMax = 8;
pullAcceleration = 0.25;
pickupList = ds_list_create();

// Set player weapon
StorePlayerWeaponData();
weaponID = DShotgunID;
activeWeapon = instance_create_layer(x, y, layer, obj_weapon_player);
SetWeapon(activeWeapon, weaponID);

// Set player weapon ammo
StorePlayerAmmoData();
ammoID = activeWeapon.ammoID;
SetAmmoParameters(ammoID, ammoData);

// Dissolve settings
drawAlpha = 0;
SetDissolveSettings(spr_dissolve_00, image_index, c_red, c_orange, 0.1);

moveSoundTimer = 0;

trancendenceTimer = 0;
trancendenceProgress = 0;

with (activeWeapon)
{
	x = weaponOwner.x + rotationOffsetX;
	y = weaponOwner.y + rotationOffsetY;
}

targetScale = 2;