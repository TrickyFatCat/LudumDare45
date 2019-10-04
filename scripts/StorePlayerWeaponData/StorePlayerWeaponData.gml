// Parameters
enum PlayerWeapon
{
	Pistol
}

#macro PistolData weaponData[PlayerWeapon.Pistol]

// Weapons data
weaponData[PlayerWeapon.Pistol] = ds_map_create();
ds_map_add(PistolData, "weaponSprite",				spr_weapon);
ds_map_add(PistolData, "laserSightEnabled",			false);
ds_map_add(PistolData, "isAuto",					true);
ds_map_add(PistolData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "bulletObject",				obj_laserP_laser);
ds_map_add(PistolData, "bulletNumber",				1);
ds_map_add(PistolData, "bulletSpawnPointOffset",	32);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "damage",					5);
ds_map_add(PistolData, "heal",						10);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "rateOfFireAccelerated",		false);
ds_map_add(PistolData, "rateOfFireIncrStep",		0.03);
ds_map_add(PistolData, "rateOfFireDecrStep",		0.09);
ds_map_add(PistolData, "rateOfFireMin",				2);
ds_map_add(PistolData, "rateOfFireMax",				8);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "burstPauseTime",			1.5);
ds_map_add(PistolData, "burstShotsNumber",			4);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "castExecuteCount",			5);
ds_map_add(PistolData, "castTime",					1);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "spreadIsDynamic",			false);
ds_map_add(PistolData, "spreadIsUniform",			true);
ds_map_add(PistolData, "spreadAngleIncrFactor",		0.2);
ds_map_add(PistolData, "spreadAngleDecrFactor",		0.0075);
ds_map_add(PistolData, "spreadAngleMin",			20);
ds_map_add(PistolData, "spreadAngleMax",			25);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "ammoID",					PlayerAmmo.Pistol);
ds_map_add(PistolData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "recoilPower",				20);
ds_map_add(PistolData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "hitscanScaleY",				2);
ds_map_add(PistolData, "projectileVelocityCurrent",	15);
ds_map_add(PistolData, "projectileVelocityMax",		3);
ds_map_add(PistolData, "projectileAcceleration",	0);
ds_map_add(PistolData, "projectileFriction",		0.1);
ds_map_add(PistolData, "projectileBounceEnable",	true);
ds_map_add(PistolData, "projectileBounceFriction",  2);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "isShackingCamera",			false);
ds_map_add(PistolData, "angularShakeEnabled",		true);
ds_map_add(PistolData, "shakeValue",				2);
ds_map_add(PistolData, "shotShakeFactor",			0.05);