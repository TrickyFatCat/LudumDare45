/// @description Insert description here

// Inherit the parent event
event_inherited();


velocityMax = 1;
acceleration = 0.2;

activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.Rocketlauncher;
SetWeapon(activeWeapon, weaponID);
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
activeWeapon.lasersightAlpha = 0;
activeWeapon.shotSound = sfx_rocket_shot;

aimTimer = 0;
aimTime = set_time(2)