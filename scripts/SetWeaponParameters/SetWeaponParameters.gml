/// @param owner
/// @param weaponID
/// @param weaponData

var _owner = argument0;
var _weaponID = argument1;
var _weaponData = argument2;

var _weapon = _weaponData[_weaponID];

weaponOwner =					_owner;
weaponSprite =					_weapon[? "weaponSprite"];
laserSightEnabled =				_weapon[? "laserSightEnabled"];
isAuto =						_weapon[? "isAuto"];
currentShootMode =				_weapon[? "currentShootMode"];
//-----------------------------------------------------------------------------
bulletObject =					_weapon[? "bulletObject"];
bulletNumber =					_weapon[? "bulletNumber"];
bulletSpawnPointOffset =	   	_weapon[? "bulletSpawnPointOffset"];
//-----------------------------------------------------------------------------
damage =						_weapon[? "damage"];
heal =							_weapon[? "heal"];
//-----------------------------------------------------------------------------
rateOfFireAccelerated =			_weapon[? "rateOfFireAccelerated"];
rateOfFireIncrStep =			_weapon[? "rateOfFireIncrStep"];
rateOfFireDecrStep =			_weapon[? "rateOfFireDecrStep"];
rateOfFireCurrent =				_weapon[? "rateOfFireMin"];
rateOfFireMin =					_weapon[? "rateOfFireMin"];
rateOfFireMax =					_weapon[? "rateOfFireMax"];
//-----------------------------------------------------------------------------
burstPauseTime =				_weapon[? "burstPauseTime"];
burstShotsNumber =				_weapon[? "burstShotsNumber"];
//-----------------------------------------------------------------------------
castTime =						_weapon[? "castTime"];
castExecuteCount =				_weapon[? "castExecuteCount"];
//-----------------------------------------------------------------------------
spreadIsDynamic =				_weapon[? "spreadIsDynamic"];
spreadIsUniform =				_weapon[? "spreadIsUniform"];
spreadAngleIncrFactor =			_weapon[? "spreadAngleIncrFactor"];
spreadAngleDecrFactor =			_weapon[? "spreadAngleDecrFactor"];
spreadAngleCurrent =			_weapon[? "spreadAngleMin"];
spreadAngleMin =				_weapon[? "spreadAngleMin"];
spreadAngleMax =				_weapon[? "spreadAngleMax"];
//-----------------------------------------------------------------------------
ammoID =						_weapon[? "ammoID"];
shootAmmoCost =					_weapon[? "shootAmmoCost"];
//-----------------------------------------------------------------------------
recoilPower =					_weapon[? "recoilPower"];
recoilFactor =					_weapon[? "recoilFactor"];
//-----------------------------------------------------------------------------
hitscanScaleY =					_weapon[? "hitscanScaleY"];
projectileVelocityCurrent =		_weapon[? "projectileVelocityCurrent"]
projectileVelocityMax =			_weapon[? "projectileVelocityMax"];
projectileAcceleration =		_weapon[? "projectileAcceleration"];
projectileFriction =			_weapon[? "projectileFriction"];
projectileBounceEnable =		_weapon[? "projectileBounceEnable"];
projectileBounceFriction =		_weapon[? "projectileBounceFriction"];
//-----------------------------------------------------------------------------
isShackingCamera =				_weapon[? "isShackingCamera"];
angularShakeEnabled =			_weapon[? "angularShakeEnabled"];
shakeValue =					_weapon[? "shakeValue"];
shotShakeFactor =				_weapon[? "shotShakeFactor"];

// Check bulletNumber and spread mode
if (bulletNumber == 1 && (spreadIsUniform))
{
	spreadIsUniform = false;
}

// Check is Auto and shoot mode
if ((currentShootMode == ShootMode.Cast || currentShootMode == ShootMode.Charge) && (!isAuto))
{
	isAuto = true;
}

// Spawn bullet objects
var bulletObjectParent = GetBulletRootParent();
switch bulletObjectParent
{
	case obj_hitscan:
		if (bulletNumber != array_length_1d(hitscanObjects))
		{
			if (array_length_1d(hitscanObjects) > 0)
			{
				DestroyBulletObjects(hitscanObjects);
			}
			hitscanObjects = CreateBulletObjects(hitscanObjects);
		}
	break;
		
	case obj_laser:
		if (bulletNumber != array_length_1d(laserObjects))
		{
			if (array_length_1d(laserObjects) > 0)
			{
				DestroyBulletObjects(laserObjects);
			}
			laserObjects = CreateBulletObjects(laserObjects);
		}
	break;
}

// Set sprite index for dissolve
sprite_index = weaponSprite;