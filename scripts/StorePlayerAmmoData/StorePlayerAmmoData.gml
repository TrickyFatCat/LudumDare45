// Parameters
enum PlayerAmmo
{
	Bullet,
	Shell,
	Rocket,
	Energy
}

#macro BulletAmmoData	ammoData[PlayerAmmo.Bullet]
#macro ShellAmmoData	ammoData[PlayerAmmo.Shell]
#macro RocketAmmoData	ammoData[PlayerAmmo.Rocket]
#macro EnergyAmmoData	ammoData[PlayerAmmo.Energy]

// Ammo Data
ammoData[PlayerAmmo.Bullet] = ds_map_create();
ds_map_add(BulletAmmoData, "ammoCurrent",		100);
ds_map_add(BulletAmmoData, "ammoCurrentMax",	100);

ammoData[PlayerAmmo.Shell] = ds_map_create();
ds_map_add(ShellAmmoData, "ammoCurrent",		50);
ds_map_add(ShellAmmoData, "ammoCurrentMax",		50);

ammoData[PlayerAmmo.Rocket] = ds_map_create();
ds_map_add(RocketAmmoData, "ammoCurrent",		100);
ds_map_add(RocketAmmoData, "ammoCurrentMax",	100);

ammoData[PlayerAmmo.Energy] = ds_map_create();
ds_map_add(EnergyAmmoData, "ammoCurrent",		100);
ds_map_add(EnergyAmmoData, "ammoCurrentMax",	100);