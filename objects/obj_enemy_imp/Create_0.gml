/// @description Insert description here

// Inherit the parent event
event_inherited();
velocityMax = 2.5;
acceleration = 0.2;

activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.ImpFireball;
SetWeapon(activeWeapon, weaponID);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
activeWeapon.shotSound = sfx_impshot;