/// @description Insert description here

// Inherit the parent event
event_inherited();

velocityMax = 5.0;
acceleration = 0.1;

explosionRadius = 32;

activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.ImpFireball;
SetWeapon(activeWeapon, weaponID);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);