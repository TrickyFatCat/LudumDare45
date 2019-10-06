/// @description Insert description here

// Inherit the parent event
event_inherited();

var _explosion = instance_create_layer(x, y, layer, obj_explosion_imp);

_explosion.explosionRadius = explosionRadius;
_explosion.damage = damage;