/// @description Insert description here

// Inherit the parent event
event_inherited();

velocityMax = 3;
acceleration = 0.2;

explosionRadius = 48;
damage = 5;

activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
weaponID = EnemyWeapon.ImpFireball;
SetWeapon(activeWeapon, weaponID);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);