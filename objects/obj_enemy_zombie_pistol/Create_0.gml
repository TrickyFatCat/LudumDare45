/// @description Insert description here

// Inherit the parent event
event_inherited();
activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.Pistol;
SetWeapon(activeWeapon, weaponID);
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);