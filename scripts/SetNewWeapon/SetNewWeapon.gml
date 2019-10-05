/// @param weaponID

var _id = argument0;

if (weaponID != _id)
{
	weaponID = _id;
	SetWeapon(activeWeapon, weaponID);
	
	ammoID = activeWeapon.ammoID;
	SetAmmoParameters(ammoID, ammoData);
}