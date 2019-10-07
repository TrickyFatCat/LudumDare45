// Parameters
enum EnemyWeapon
{
	ImpFireball,
	ImpBigFireBall,
	Pistol,
	Shotgun,
	AssaultRifle,
	Rocketlauncher
}

#macro ImpFireballData weaponData[EnemyWeapon.ImpFireball]
#macro ImpBigFireballData weaponData[EnemyWeapon.ImpBigFireBall]
#macro EnemyPistolData weaponData[EnemyWeapon.Pistol]
#macro EnemyShotgunData weaponData[EnemyWeapon.Shotgun]
#macro EnemyRifleData weaponData[EnemyWeapon.AssaultRifle]
#macro EnemyRocketData weaponData[EnemyWeapon.Rocketlauncher]

// Weapons data
#region // Fireball
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
#endregion

#region // Big Fireball
weaponData[EnemyWeapon.ImpBigFireBall] = ds_map_create();
ds_map_add(ImpBigFireballData, "weaponSprite",					noone);
ds_map_add(ImpBigFireballData, "offsetZ",						4);
ds_map_add(ImpBigFireballData, "laserSightEnabled",				false);
ds_map_add(ImpBigFireballData, "isAuto",						true);
ds_map_add(ImpBigFireballData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "bulletObject",					obj_projectileE_fireball);
ds_map_add(ImpBigFireballData, "bulletNumber",					1);
ds_map_add(ImpBigFireballData, "bulletSpawnPointOffset",		0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "damage",						5);
ds_map_add(ImpBigFireballData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "rateOfFireAccelerated",			false);
ds_map_add(ImpBigFireballData, "rateOfFireIncrStep",			0);
ds_map_add(ImpBigFireballData, "rateOfFireDecrStep",			0);
ds_map_add(ImpBigFireballData, "rateOfFireMin",					2);
ds_map_add(ImpBigFireballData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "burstPauseTime",				0);
ds_map_add(ImpBigFireballData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "castExecuteCount",				false);
ds_map_add(ImpBigFireballData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "spreadIsDynamic",				false);
ds_map_add(ImpBigFireballData, "spreadIsUniform",				false);
ds_map_add(ImpBigFireballData, "spreadAngleIncrFactor",			0);
ds_map_add(ImpBigFireballData, "spreadAngleDecrFactor",			0);
ds_map_add(ImpBigFireballData, "spreadAngleMin",				5);
ds_map_add(ImpBigFireballData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "ammoID",						-1);
ds_map_add(ImpBigFireballData, "shootAmmoCost",					0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "recoilPower",					0);
ds_map_add(ImpBigFireballData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "hitscanScaleY",					0);
ds_map_add(ImpBigFireballData, "projectileVelocityCurrent",		2.5);
ds_map_add(ImpBigFireballData, "projectileVelocityMax",			0);
ds_map_add(ImpBigFireballData, "projectileAcceleration",		0);
ds_map_add(ImpBigFireballData, "projectileFriction",			0);
ds_map_add(ImpBigFireballData, "projectileBounceEnable",		false);
ds_map_add(ImpBigFireballData, "projectileBounceFriction",		0);
//-----------------------------------------------------------------------------
ds_map_add(ImpBigFireballData, "isShackingCamera",				false);
ds_map_add(ImpBigFireballData, "angularShakeEnabled",			false);
ds_map_add(ImpBigFireballData, "shakeValue",					0);
ds_map_add(ImpBigFireballData, "shotShakeFactor",				0);
#endregion

#region // Pistol
weaponData[EnemyWeapon.Pistol] = ds_map_create();
ds_map_add(EnemyPistolData, "weaponSprite",					spr_weapon_pistol);
ds_map_add(EnemyPistolData, "offsetZ",						4);
ds_map_add(EnemyPistolData, "laserSightEnabled",			false);
ds_map_add(EnemyPistolData, "isAuto",						true);
ds_map_add(EnemyPistolData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "bulletObject",					obj_projectileE_pistol);
ds_map_add(EnemyPistolData, "bulletNumber",					1);
ds_map_add(EnemyPistolData, "bulletSpawnPointOffset",		16);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "damage",						2);
ds_map_add(EnemyPistolData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyPistolData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyPistolData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyPistolData, "rateOfFireMin",				1.5);
ds_map_add(EnemyPistolData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "burstPauseTime",				0);
ds_map_add(EnemyPistolData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "castExecuteCount",				false);
ds_map_add(EnemyPistolData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "spreadIsDynamic",				false);
ds_map_add(EnemyPistolData, "spreadIsUniform",				false);
ds_map_add(EnemyPistolData, "spreadAngleIncrFactor",		0);
ds_map_add(EnemyPistolData, "spreadAngleDecrFactor",		0);
ds_map_add(EnemyPistolData, "spreadAngleMin",				30);
ds_map_add(EnemyPistolData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "ammoID",						-1);
ds_map_add(EnemyPistolData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "recoilPower",					0);
ds_map_add(EnemyPistolData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "hitscanScaleY",				0);
ds_map_add(EnemyPistolData, "projectileVelocityCurrent",	4);
ds_map_add(EnemyPistolData, "projectileVelocityMax",		0);
ds_map_add(EnemyPistolData, "projectileAcceleration",		0);
ds_map_add(EnemyPistolData, "projectileFriction",			0);
ds_map_add(EnemyPistolData, "projectileBounceEnable",		false);
ds_map_add(EnemyPistolData, "projectileBounceFriction",		0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "isShackingCamera",				false);
ds_map_add(EnemyPistolData, "angularShakeEnabled",			false);
ds_map_add(EnemyPistolData, "shakeValue",					0);
ds_map_add(EnemyPistolData, "shotShakeFactor",				0);
#endregion

#region // Shotgun
weaponData[EnemyWeapon.Shotgun] = ds_map_create();
ds_map_add(EnemyShotgunData, "weaponSprite",				spr_weapon_shotgun);
ds_map_add(EnemyShotgunData, "offsetZ",						4);
ds_map_add(EnemyShotgunData, "laserSightEnabled",			false);
ds_map_add(EnemyShotgunData, "isAuto",						true);
ds_map_add(EnemyShotgunData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "bulletObject",				obj_projectileE_shotgun);
ds_map_add(EnemyShotgunData, "bulletNumber",				8);
ds_map_add(EnemyShotgunData, "bulletSpawnPointOffset",		18);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "damage",						4);
ds_map_add(EnemyShotgunData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyShotgunData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyShotgunData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyShotgunData, "rateOfFireMin",				1);
ds_map_add(EnemyShotgunData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "burstPauseTime",				0);
ds_map_add(EnemyShotgunData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "castExecuteCount",			false);
ds_map_add(EnemyShotgunData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "spreadIsDynamic",				false);
ds_map_add(EnemyShotgunData, "spreadIsUniform",				false);
ds_map_add(EnemyShotgunData, "spreadAngleIncrFactor",		0);
ds_map_add(EnemyShotgunData, "spreadAngleDecrFactor",		0);
ds_map_add(EnemyShotgunData, "spreadAngleMin",				35);
ds_map_add(EnemyShotgunData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "ammoID",						-1);
ds_map_add(EnemyShotgunData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "recoilPower",					20);
ds_map_add(EnemyShotgunData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "hitscanScaleY",				0);
ds_map_add(EnemyShotgunData, "projectileVelocityCurrent",	7);
ds_map_add(EnemyShotgunData, "projectileVelocityMax",		0);
ds_map_add(EnemyShotgunData, "projectileAcceleration",		0);
ds_map_add(EnemyShotgunData, "projectileFriction",			0.1);
ds_map_add(EnemyShotgunData, "projectileBounceEnable",		false);
ds_map_add(EnemyShotgunData, "projectileBounceFriction",	0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyShotgunData, "isShackingCamera",			false);
ds_map_add(EnemyShotgunData, "angularShakeEnabled",			false);
ds_map_add(EnemyShotgunData, "shakeValue",					0);
ds_map_add(EnemyShotgunData, "shotShakeFactor",				0);
#endregion

#region // AssaultRifle
weaponData[EnemyWeapon.AssaultRifle] = ds_map_create();
ds_map_add(EnemyRifleData, "weaponSprite",					noone);
ds_map_add(EnemyRifleData, "offsetZ",						4);
ds_map_add(EnemyRifleData, "laserSightEnabled",			false);
ds_map_add(EnemyRifleData, "isAuto",						true);
ds_map_add(EnemyRifleData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "bulletObject",					obj_projectileE_fireball);
ds_map_add(EnemyRifleData, "bulletNumber",					1);
ds_map_add(EnemyRifleData, "bulletSpawnPointOffset",		0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "damage",						5);
ds_map_add(EnemyRifleData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyRifleData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyRifleData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyRifleData, "rateOfFireMin",				2);
ds_map_add(EnemyRifleData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "burstPauseTime",				0);
ds_map_add(EnemyRifleData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "castExecuteCount",				false);
ds_map_add(EnemyRifleData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "spreadIsDynamic",				false);
ds_map_add(EnemyRifleData, "spreadIsUniform",				false);
ds_map_add(EnemyRifleData, "spreadAngleIncrFactor",		0);
ds_map_add(EnemyRifleData, "spreadAngleDecrFactor",		0);
ds_map_add(EnemyRifleData, "spreadAngleMin",				5);
ds_map_add(EnemyRifleData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "ammoID",						-1);
ds_map_add(EnemyRifleData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "recoilPower",					0);
ds_map_add(EnemyRifleData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "hitscanScaleY",				0);
ds_map_add(EnemyRifleData, "projectileVelocityCurrent",	2.5);
ds_map_add(EnemyRifleData, "projectileVelocityMax",		0);
ds_map_add(EnemyRifleData, "projectileAcceleration",		0);
ds_map_add(EnemyRifleData, "projectileFriction",			0);
ds_map_add(EnemyRifleData, "projectileBounceEnable",		false);
ds_map_add(EnemyRifleData, "projectileBounceFriction",		0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRifleData, "isShackingCamera",				false);
ds_map_add(EnemyRifleData, "angularShakeEnabled",			false);
ds_map_add(EnemyRifleData, "shakeValue",					0);
ds_map_add(EnemyRifleData, "shotShakeFactor",				0);
#endregion

#region // Rocketlauncher
weaponData[EnemyWeapon.Rocketlauncher] = ds_map_create();
ds_map_add(EnemyRocketData, "weaponSprite",					spr_weapon_rocketlauncher);
ds_map_add(EnemyRocketData, "offsetZ",						4);
ds_map_add(EnemyRocketData, "laserSightEnabled",			false);
ds_map_add(EnemyRocketData, "isAuto",						true);
ds_map_add(EnemyRocketData, "currentShootMode",				ShootMode.Cast);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "bulletObject",					obj_projectileE_rocketlauncher);
ds_map_add(EnemyRocketData, "bulletNumber",					1);
ds_map_add(EnemyRocketData, "bulletSpawnPointOffset",		24);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "damage",						20);
ds_map_add(EnemyRocketData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyRocketData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyRocketData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyRocketData, "rateOfFireMin",				1);
ds_map_add(EnemyRocketData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "burstPauseTime",				0);
ds_map_add(EnemyRocketData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "castExecuteCount",				0);
ds_map_add(EnemyRocketData, "castTime",						2);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "spreadIsDynamic",				false);
ds_map_add(EnemyRocketData, "spreadIsUniform",				false);
ds_map_add(EnemyRocketData, "spreadAngleIncrFactor",		0);
ds_map_add(EnemyRocketData, "spreadAngleDecrFactor",		0);
ds_map_add(EnemyRocketData, "spreadAngleMin",				0);
ds_map_add(EnemyRocketData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "ammoID",						-1);
ds_map_add(EnemyRocketData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "recoilPower",					20);
ds_map_add(EnemyRocketData, "recoilFactor",					0.3);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "hitscanScaleY",				0);
ds_map_add(EnemyRocketData, "projectileVelocityCurrent",	0);
ds_map_add(EnemyRocketData, "projectileVelocityMax",		6);
ds_map_add(EnemyRocketData, "projectileAcceleration",		0.1);
ds_map_add(EnemyRocketData, "projectileFriction",			0);
ds_map_add(EnemyRocketData, "projectileBounceEnable",		false);
ds_map_add(EnemyRocketData, "projectileBounceFriction",		0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyRocketData, "isShackingCamera",				false);
ds_map_add(EnemyRocketData, "angularShakeEnabled",			false);
ds_map_add(EnemyRocketData, "shakeValue",					0);
ds_map_add(EnemyRocketData, "shotShakeFactor",				0);
#endregion