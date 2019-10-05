/// @description CurrentWeaponController

var _wep = [];
_wep[PistolID] =	keyboard_check_pressed(ord("1"));
_wep[ShotgunlID] =	keyboard_check_pressed(ord("2"));
_wep[RifleID] =		keyboard_check_pressed(ord("3"));
_wep[DShotgunID] =	keyboard_check_pressed(ord("4"));
_wep[MinigunID] =	keyboard_check_pressed(ord("5"));
_wep[RocketID] =	keyboard_check_pressed(ord("6"));
_wep[PlasmaID] =	keyboard_check_pressed(ord("7"));
_wep[BHGID] =		keyboard_check_pressed(ord("8"));

if (_wep[PistolID])
{
	SetNewWeapon(PistolID);
}

if (_wep[ShotgunlID])
{
	SetNewWeapon(ShotgunlID);
}

if (_wep[RifleID])
{
	SetNewWeapon(RifleID);
}

if (_wep[DShotgunID])
{
	SetNewWeapon(DShotgunID);
}

if (_wep[MinigunID])
{
	SetNewWeapon(MinigunID);
}

if (_wep[RocketID])
{
	SetNewWeapon(RocketID);
}

if (_wep[PlasmaID])
{
	SetNewWeapon(PlasmaID);
}

if (_wep[BHGID])
{
	SetNewWeapon(BHGID);
}