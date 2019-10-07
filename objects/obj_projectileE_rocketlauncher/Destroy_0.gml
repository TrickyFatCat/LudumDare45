/// @description Insert description here

// Inherit the parent event
event_inherited();

var _explosion = instance_create_layer(x, y, layer, obj_explosionP_rocket);

_explosion.damage = damage;
_explosion.explosionRadius = explosionRadius;