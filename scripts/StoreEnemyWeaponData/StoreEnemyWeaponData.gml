// Parameters
enum EnemyWeapon
{
	Pistol,
	ImpFireball
}

#macro EnemyPistolData weaponData[EnemyWeapon.Pistol]
#macro ImpFireballData weaponData[EnemyWeapon.ImpFireball]

// Weapons data
weaponData[EnemyWeapon.ImpFireball] = ds_map_create();
ds_map_add(ImpFireballData, "weaponSprite",					noone);
ds_map_add(ImpFireballData, "offsetZ",						4);
ds_map_add(ImpFireballData, "laserSightEnabled",			false);
ds_map_add(ImpFireballData, "isAuto",						true);
ds_map_add(ImpFireballData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "bulletObject",					obj_projectileE_fireball);
ds_map_add(ImpFireballData, "bulletNumber",					1);
ds_map_add(ImpFireballData, "bulletSpawnPointOffset",		0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "damage",						5);
ds_map_add(ImpFireballData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "rateOfFireAccelerated",		false);
ds_map_add(ImpFireballData, "rateOfFireIncrStep",			0);
ds_map_add(ImpFireballData, "rateOfFireDecrStep",			0);
ds_map_add(ImpFireballData, "rateOfFireMin",				2);
ds_map_add(ImpFireballData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "burstPauseTime",				0);
ds_map_add(ImpFireballData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "castExecuteCount",				false);
ds_map_add(ImpFireballData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "spreadIsDynamic",				false);
ds_map_add(ImpFireballData, "spreadIsUniform",				false);
ds_map_add(ImpFireballData, "spreadAngleIncrFactor",		0);
ds_map_add(ImpFireballData, "spreadAngleDecrFactor",		0);
ds_map_add(ImpFireballData, "spreadAngleMin",				5);
ds_map_add(ImpFireballData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "ammoID",						-1);
ds_map_add(ImpFireballData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "recoilPower",					0);
ds_map_add(ImpFireballData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "hitscanScaleY",				0);
ds_map_add(ImpFireballData, "projectileVelocityCurrent",	2.5);
ds_map_add(ImpFireballData, "projectileVelocityMax",		0);
ds_map_add(ImpFireballData, "projectileAcceleration",		0);
ds_map_add(ImpFireballData, "projectileFriction",			0);
ds_map_add(ImpFireballData, "projectileBounceEnable",		false);
ds_map_add(ImpFireballData, "projectileBounceFriction",		0);
//-----------------------------------------------------------------------------
ds_map_add(ImpFireballData, "isShackingCamera",				false);
ds_map_add(ImpFireballData, "angularShakeEnabled",			false);
ds_map_add(ImpFireballData, "shakeValue",					0);
ds_map_add(ImpFireballData, "shotShakeFactor",				0);