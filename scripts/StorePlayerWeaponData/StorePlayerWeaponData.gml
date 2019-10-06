// Parameters
enum PlayerWeapon
{
	Pistol,
	Shotgun,
	Assaultrifle,
	Doubleshotgun,
	Minigun,
	Rocketlauncher,
	Plasmagun,
	Bighonkgun
}

#region // ID macroses
#macro PistolID   PlayerWeapon.Pistol
#macro ShotgunlID PlayerWeapon.Shotgun
#macro RifleID    PlayerWeapon.Assaultrifle
#macro DShotgunID PlayerWeapon.Doubleshotgun
#macro MinigunID PlayerWeapon.Minigun
#macro RocketID PlayerWeapon.Rocketlauncher
#macro PlasmaID PlayerWeapon.Plasmagun
#macro BHGID PlayerWeapon.Bighonkgun
#endregion

#region // Data macroses
#macro PistolData	weaponData[PlayerWeapon.Pistol]
#macro ShotgunData	weaponData[PlayerWeapon.Shotgun]
#macro RifleData	weaponData[PlayerWeapon.Assaultrifle]
#macro DShotgunData weaponData[PlayerWeapon.Doubleshotgun]
#macro MinigunData	weaponData[PlayerWeapon.Minigun]
#macro RocketData	weaponData[PlayerWeapon.Rocketlauncher]
#macro PlasmaData	weaponData[PlayerWeapon.Plasmagun]
#macro BHGData		weaponData[PlayerWeapon.Bighonkgun]
#endregion

// Weapons data
#region // Pistol
weaponData[PlayerWeapon.Pistol] = ds_map_create();
ds_map_add(PistolData, "weaponSprite",				spr_weapon_pistol);
ds_map_add(PistolData, "offsetZ",					4);
ds_map_add(PistolData, "laserSightEnabled",			false);
ds_map_add(PistolData, "isAuto",					false);
ds_map_add(PistolData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "bulletObject",				obj_projectileP_pistol);
ds_map_add(PistolData, "bulletNumber",				1);
ds_map_add(PistolData, "bulletSpawnPointOffset",	15);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "damage",					5);
ds_map_add(PistolData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "rateOfFireAccelerated",		false);
ds_map_add(PistolData, "rateOfFireIncrStep",		0);
ds_map_add(PistolData, "rateOfFireDecrStep",		0);
ds_map_add(PistolData, "rateOfFireMin",				2);
ds_map_add(PistolData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "burstPauseTime",			0);
ds_map_add(PistolData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "castExecuteCount",			0);
ds_map_add(PistolData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "spreadIsDynamic",			false);
ds_map_add(PistolData, "spreadIsUniform",			false);
ds_map_add(PistolData, "spreadAngleIncrFactor",		0);
ds_map_add(PistolData, "spreadAngleDecrFactor",		0);
ds_map_add(PistolData, "spreadAngleMin",			20);
ds_map_add(PistolData, "spreadAngleMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "ammoID",					PlayerAmmo.Bullet);
ds_map_add(PistolData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "recoilPower",				10);
ds_map_add(PistolData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "hitscanScaleY",				0);
ds_map_add(PistolData, "projectileVelocityCurrent",	10);
ds_map_add(PistolData, "projectileVelocityMax",		0);
ds_map_add(PistolData, "projectileAcceleration",	0);
ds_map_add(PistolData, "projectileFriction",		0.1);
ds_map_add(PistolData, "projectileBounceEnable",	true);
ds_map_add(PistolData, "projectileBounceFriction",  2);
//-----------------------------------------------------------------------------
ds_map_add(PistolData, "isShackingCamera",			true);
ds_map_add(PistolData, "angularShakeEnabled",		false);
ds_map_add(PistolData, "shakeValue",				0.5);
ds_map_add(PistolData, "shotShakeFactor",			1);
#endregion

#region // Shotgun
weaponData[PlayerWeapon.Shotgun] = ds_map_create();
ds_map_add(ShotgunData, "weaponSprite",				spr_weapon_shotgun);
ds_map_add(ShotgunData, "offsetZ",					4);
ds_map_add(ShotgunData, "laserSightEnabled",		false);
ds_map_add(ShotgunData, "isAuto",					false);
ds_map_add(ShotgunData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "bulletObject",				obj_projectileP_shotgun);
ds_map_add(ShotgunData, "bulletNumber",				12);
ds_map_add(ShotgunData, "bulletSpawnPointOffset",	18);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "damage",					5);
ds_map_add(ShotgunData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "rateOfFireAccelerated",	false);
ds_map_add(ShotgunData, "rateOfFireIncrStep",		0);
ds_map_add(ShotgunData, "rateOfFireDecrStep",		0);
ds_map_add(ShotgunData, "rateOfFireMin",			1.5);
ds_map_add(ShotgunData, "rateOfFireMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "burstPauseTime",			0);
ds_map_add(ShotgunData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "castExecuteCount",			0);
ds_map_add(ShotgunData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "spreadIsDynamic",			false);
ds_map_add(ShotgunData, "spreadIsUniform",			false);
ds_map_add(ShotgunData, "spreadAngleIncrFactor",	0);
ds_map_add(ShotgunData, "spreadAngleDecrFactor",	0);
ds_map_add(ShotgunData, "spreadAngleMin",			20);
ds_map_add(ShotgunData, "spreadAngleMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "ammoID",					PlayerAmmo.Shell);
ds_map_add(ShotgunData, "shootAmmoCost",			1);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "recoilPower",				20);
ds_map_add(ShotgunData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "hitscanScaleY",			0);
ds_map_add(ShotgunData, "projectileVelocityCurrent",9);
ds_map_add(ShotgunData, "projectileVelocityMax",	0);
ds_map_add(ShotgunData, "projectileAcceleration",	0);
ds_map_add(ShotgunData, "projectileFriction",		0.15);
ds_map_add(ShotgunData, "projectileBounceEnable",	true);
ds_map_add(ShotgunData, "projectileBounceFriction", 2);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "isShackingCamera",			true);
ds_map_add(ShotgunData, "angularShakeEnabled",		false);
ds_map_add(ShotgunData, "shakeValue",				1);
ds_map_add(ShotgunData, "shotShakeFactor",			1);
#endregion

#region // Assaultrifle
weaponData[PlayerWeapon.Assaultrifle] = ds_map_create();
ds_map_add(RifleData, "weaponSprite",				spr_weapon_assaultrifle);
ds_map_add(RifleData, "offsetZ",					4);
ds_map_add(RifleData, "laserSightEnabled",			false);
ds_map_add(RifleData, "isAuto",						true);
ds_map_add(RifleData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "bulletObject",				obj_projectileP_assaultrifle);
ds_map_add(RifleData, "bulletNumber",				1);
ds_map_add(RifleData, "bulletSpawnPointOffset",		21);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "damage",						5);
ds_map_add(RifleData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "rateOfFireAccelerated",		false);
ds_map_add(RifleData, "rateOfFireIncrStep",			0);
ds_map_add(RifleData, "rateOfFireDecrStep",			0);
ds_map_add(RifleData, "rateOfFireMin",				6);
ds_map_add(RifleData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "burstPauseTime",				0);
ds_map_add(RifleData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "castExecuteCount",			0);
ds_map_add(RifleData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "spreadIsDynamic",			true);
ds_map_add(RifleData, "spreadIsUniform",			false);
ds_map_add(RifleData, "spreadAngleIncrFactor",		0.2);
ds_map_add(RifleData, "spreadAngleDecrFactor",		0.0075);
ds_map_add(RifleData, "spreadAngleMin",				15);
ds_map_add(RifleData, "spreadAngleMax",				20);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "ammoID",						PlayerAmmo.Bullet);
ds_map_add(RifleData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "recoilPower",				20);
ds_map_add(RifleData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "hitscanScaleY",				0);
ds_map_add(RifleData, "projectileVelocityCurrent",	15);
ds_map_add(RifleData, "projectileVelocityMax",		0);
ds_map_add(RifleData, "projectileAcceleration",		0);
ds_map_add(RifleData, "projectileFriction",			0.1);
ds_map_add(RifleData, "projectileBounceEnable",		true);
ds_map_add(RifleData, "projectileBounceFriction",   2);
//-----------------------------------------------------------------------------
ds_map_add(RifleData, "isShackingCamera",			true);
ds_map_add(RifleData, "angularShakeEnabled",		true);
ds_map_add(RifleData, "shakeValue",					0.75);
ds_map_add(RifleData, "shotShakeFactor",			0.05);
#endregion

#region // Doubleshotgun
weaponData[PlayerWeapon.Doubleshotgun] = ds_map_create();
ds_map_add(DShotgunData, "weaponSprite",				spr_weapon_doubleshotgun);
ds_map_add(DShotgunData, "offsetZ",						4);
ds_map_add(DShotgunData, "laserSightEnabled",			false);
ds_map_add(DShotgunData, "isAuto",						false);
ds_map_add(DShotgunData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "bulletObject",				obj_projectileP_doubleshotgun);
ds_map_add(DShotgunData, "bulletNumber",				24);
ds_map_add(DShotgunData, "bulletSpawnPointOffset",		14);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "damage",						5);
ds_map_add(DShotgunData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "rateOfFireAccelerated",		false);
ds_map_add(DShotgunData, "rateOfFireIncrStep",			0);
ds_map_add(DShotgunData, "rateOfFireDecrStep",			0);
ds_map_add(DShotgunData, "rateOfFireMin",				1);
ds_map_add(DShotgunData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "burstPauseTime",				0);
ds_map_add(DShotgunData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "castExecuteCount",			0);
ds_map_add(DShotgunData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "spreadIsDynamic",				false);
ds_map_add(DShotgunData, "spreadIsUniform",				false);
ds_map_add(DShotgunData, "spreadAngleIncrFactor",		0);
ds_map_add(DShotgunData, "spreadAngleDecrFactor",		0);
ds_map_add(DShotgunData, "spreadAngleMin",				30);
ds_map_add(DShotgunData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "ammoID",						PlayerAmmo.Shell);
ds_map_add(DShotgunData, "shootAmmoCost",				2);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "recoilPower",					20);
ds_map_add(DShotgunData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "hitscanScaleY",				0);
ds_map_add(DShotgunData, "projectileVelocityCurrent",	9);
ds_map_add(DShotgunData, "projectileVelocityMax",		0);
ds_map_add(DShotgunData, "projectileAcceleration",		0);
ds_map_add(DShotgunData, "projectileFriction",			0.1);
ds_map_add(DShotgunData, "projectileBounceEnable",		true);
ds_map_add(DShotgunData, "projectileBounceFriction",	2);
//-----------------------------------------------------------------------------
ds_map_add(DShotgunData, "isShackingCamera",			true);
ds_map_add(DShotgunData, "angularShakeEnabled",			true);
ds_map_add(DShotgunData, "shakeValue",					1.75);
ds_map_add(DShotgunData, "shotShakeFactor",				1);
#endregion

#region // Minigun
weaponData[PlayerWeapon.Minigun] = ds_map_create();
ds_map_add(MinigunData, "weaponSprite",				 spr_weapon_minigun);
ds_map_add(MinigunData, "offsetZ",					 4);
ds_map_add(MinigunData, "laserSightEnabled",		 false);
ds_map_add(MinigunData, "isAuto",					 true);
ds_map_add(MinigunData, "currentShootMode",			 ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "bulletObject",				 obj_projectileP_minigun);
ds_map_add(MinigunData, "bulletNumber",				 1);
ds_map_add(MinigunData, "bulletSpawnPointOffset",	 16);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "damage",					 5);
ds_map_add(MinigunData, "heal",						 0);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "rateOfFireAccelerated",	 true);
ds_map_add(MinigunData, "rateOfFireIncrStep",		 0.03);
ds_map_add(MinigunData, "rateOfFireDecrStep",		 0.09);
ds_map_add(MinigunData, "rateOfFireMin",			 2);
ds_map_add(MinigunData, "rateOfFireMax",			 12);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "burstPauseTime",			 0);
ds_map_add(MinigunData, "burstShotsNumber",			 0);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "castExecuteCount",			 0);
ds_map_add(MinigunData, "castTime",					 0);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "spreadIsDynamic",			 true);
ds_map_add(MinigunData, "spreadIsUniform",			 false);
ds_map_add(MinigunData, "spreadAngleIncrFactor",	 0.2);
ds_map_add(MinigunData, "spreadAngleDecrFactor",	 0.0075);
ds_map_add(MinigunData, "spreadAngleMin",			 10);
ds_map_add(MinigunData, "spreadAngleMax",			 30);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "ammoID",					 PlayerAmmo.Bullet);
ds_map_add(MinigunData, "shootAmmoCost",			 1);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "recoilPower",				 20);
ds_map_add(MinigunData, "recoilFactor",				 0.3);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "hitscanScaleY",			 0);
ds_map_add(MinigunData, "projectileVelocityCurrent", 18);
ds_map_add(MinigunData, "projectileVelocityMax",	 3);
ds_map_add(MinigunData, "projectileAcceleration",	 0);
ds_map_add(MinigunData, "projectileFriction",		 0.1);
ds_map_add(MinigunData, "projectileBounceEnable",	 true);
ds_map_add(MinigunData, "projectileBounceFriction",  2);
//-----------------------------------------------------------------------------
ds_map_add(MinigunData, "isShackingCamera",			 true);
ds_map_add(MinigunData, "angularShakeEnabled",		 true);
ds_map_add(MinigunData, "shakeValue",				 1);
ds_map_add(MinigunData, "shotShakeFactor",			 0.02);
#endregion

#region // Rocketlauncher
weaponData[PlayerWeapon.Rocketlauncher] = ds_map_create();
ds_map_add(RocketData, "weaponSprite",				spr_weapon_rocketlauncher);
ds_map_add(RocketData, "offsetZ",					4);
ds_map_add(RocketData, "laserSightEnabled",			false);
ds_map_add(RocketData, "isAuto",					false);
ds_map_add(RocketData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "bulletObject",				obj_projectileP_rocketlauncher);
ds_map_add(RocketData, "bulletNumber",				1);
ds_map_add(RocketData, "bulletSpawnPointOffset",	19);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "damage",					50);
ds_map_add(RocketData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "rateOfFireAccelerated",		false);
ds_map_add(RocketData, "rateOfFireIncrStep",		0);
ds_map_add(RocketData, "rateOfFireDecrStep",		0);
ds_map_add(RocketData, "rateOfFireMin",				2);
ds_map_add(RocketData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "burstPauseTime",			0);
ds_map_add(RocketData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "castExecuteCount",			0);
ds_map_add(RocketData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "spreadIsDynamic",			false);
ds_map_add(RocketData, "spreadIsUniform",			false);
ds_map_add(RocketData, "spreadAngleIncrFactor",		0);
ds_map_add(RocketData, "spreadAngleDecrFactor",		0);
ds_map_add(RocketData, "spreadAngleMin",			5);
ds_map_add(RocketData, "spreadAngleMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "ammoID",					PlayerAmmo.Rocket);
ds_map_add(RocketData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "recoilPower",				20);
ds_map_add(RocketData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "hitscanScaleY",				0);
ds_map_add(RocketData, "projectileVelocityCurrent",	0);
ds_map_add(RocketData, "projectileVelocityMax",		7);
ds_map_add(RocketData, "projectileAcceleration",	0.1);
ds_map_add(RocketData, "projectileFriction",		0);
ds_map_add(RocketData, "projectileBounceEnable",	false);
ds_map_add(RocketData, "projectileBounceFriction",  0);
//-----------------------------------------------------------------------------
ds_map_add(RocketData, "isShackingCamera",			true);
ds_map_add(RocketData, "angularShakeEnabled",		true);
ds_map_add(RocketData, "shakeValue",				1.5);
ds_map_add(RocketData, "shotShakeFactor",			1);
#endregion

#region // Plasmagun
weaponData[PlayerWeapon.Plasmagun] = ds_map_create();
ds_map_add(PlasmaData, "weaponSprite",				spr_weapon_plasmagun);
ds_map_add(PlasmaData, "offsetZ",					4);
ds_map_add(PlasmaData, "laserSightEnabled",			false);
ds_map_add(PlasmaData, "isAuto",					true);
ds_map_add(PlasmaData, "currentShootMode",			ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "bulletObject",				obj_projectileP_plasmagun);
ds_map_add(PlasmaData, "bulletNumber",				1);
ds_map_add(PlasmaData, "bulletSpawnPointOffset",	14);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "damage",					5);
ds_map_add(PlasmaData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "rateOfFireAccelerated",		false);
ds_map_add(PlasmaData, "rateOfFireIncrStep",		0);
ds_map_add(PlasmaData, "rateOfFireDecrStep",		0);
ds_map_add(PlasmaData, "rateOfFireMin",				8);
ds_map_add(PlasmaData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "burstPauseTime",			0);
ds_map_add(PlasmaData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "castExecuteCount",			0);
ds_map_add(PlasmaData, "castTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "spreadIsDynamic",			false);
ds_map_add(PlasmaData, "spreadIsUniform",			false);
ds_map_add(PlasmaData, "spreadAngleIncrFactor",		0);
ds_map_add(PlasmaData, "spreadAngleDecrFactor",		0);
ds_map_add(PlasmaData, "spreadAngleMin",			0);
ds_map_add(PlasmaData, "spreadAngleMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "ammoID",					PlayerAmmo.Energy);
ds_map_add(PlasmaData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "recoilPower",				10);
ds_map_add(PlasmaData, "recoilFactor",				0.3);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "hitscanScaleY",				0);
ds_map_add(PlasmaData, "projectileVelocityCurrent",	20);
ds_map_add(PlasmaData, "projectileVelocityMax",		0);
ds_map_add(PlasmaData, "projectileAcceleration",	0);
ds_map_add(PlasmaData, "projectileFriction",		0);
ds_map_add(PlasmaData, "projectileBounceEnable",	false);
ds_map_add(PlasmaData, "projectileBounceFriction",  0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaData, "isShackingCamera",			false);
ds_map_add(PlasmaData, "angularShakeEnabled",		false);
ds_map_add(PlasmaData, "shakeValue",				0);
ds_map_add(PlasmaData, "shotShakeFactor",			0);
#endregion

#region // Bighonkgun
weaponData[PlayerWeapon.Bighonkgun] = ds_map_create();
ds_map_add(BHGData, "weaponSprite",				spr_weapon_bighonkgun);
ds_map_add(BHGData, "offsetZ",					4);
ds_map_add(BHGData, "laserSightEnabled",		false);
ds_map_add(BHGData, "isAuto",					true);
ds_map_add(BHGData, "currentShootMode",			ShootMode.Cast);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "bulletObject",				obj_laserP_bighonkgun);
ds_map_add(BHGData, "bulletNumber",				1);
ds_map_add(BHGData, "bulletSpawnPointOffset",	10);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "damage",					1);
ds_map_add(BHGData, "heal",						0);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "rateOfFireAccelerated",	false);
ds_map_add(BHGData, "rateOfFireIncrStep",		0);
ds_map_add(BHGData, "rateOfFireDecrStep",		0);
ds_map_add(BHGData, "rateOfFireMin",			25);
ds_map_add(BHGData, "rateOfFireMax",			1);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "burstPauseTime",			0);
ds_map_add(BHGData, "burstShotsNumber",			0);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "castExecuteCount",			0);
ds_map_add(BHGData, "castTime",					1.5);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "spreadIsDynamic",			false);
ds_map_add(BHGData, "spreadIsUniform",			false);
ds_map_add(BHGData, "spreadAngleIncrFactor",	0);
ds_map_add(BHGData, "spreadAngleDecrFactor",	0);
ds_map_add(BHGData, "spreadAngleMin",			0);
ds_map_add(BHGData, "spreadAngleMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "ammoID",					PlayerAmmo.Energy);
ds_map_add(BHGData, "shootAmmoCost",			1);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "recoilPower",				0);
ds_map_add(BHGData, "recoilFactor",				0);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "hitscanScaleY",			3);
ds_map_add(BHGData, "projectileVelocityCurrent",0);
ds_map_add(BHGData, "projectileVelocityMax",	0);
ds_map_add(BHGData, "projectileAcceleration",	0);
ds_map_add(BHGData, "projectileFriction",		0);
ds_map_add(BHGData, "projectileBounceEnable",	false);
ds_map_add(BHGData, "projectileBounceFriction", 0);
//-----------------------------------------------------------------------------
ds_map_add(BHGData, "isShackingCamera",			false);
ds_map_add(BHGData, "angularShakeEnabled",		false);
ds_map_add(BHGData, "shakeValue",				0);
ds_map_add(BHGData, "shotShakeFactor",			0);
#endregion