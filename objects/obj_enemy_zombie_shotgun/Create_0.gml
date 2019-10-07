/// @description Insert description here

// Inherit the parent event
event_inherited();

velocityMax = 1.5;
acceleration = 0.2;

activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.Shotgun;
SetWeapon(activeWeapon, weaponID);
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
activeWeapon.shotSound = sfx_shot_enemy;