/// @description ShootModeAutoHandler

switch (bulletObjectParent)
{
	case obj_projectile:
		if (isShooting) && (checkShootPause)
		{
			SpawnProjectile;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_hitscan:
		SetBulletTransform(hitscanObjects);
		if (isShooting) && (checkShootPause)
		{
			EnableHitscan;
			ExecuteAdditionalMechanics;
		}
	break;

	case obj_laser:
		SetBulletTransform(laserObjects);
		CalculateLaserSpread;
		SetLaserState;
		SwithchLaserDamage;
	break;
}