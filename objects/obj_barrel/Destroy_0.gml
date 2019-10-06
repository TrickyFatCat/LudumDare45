event_inherited();

var _explosion = instance_create_layer(x, y, layer, obj_explosion_barrel);

_explosion.explosionRadius = explosionRadius;
_explosion.damage = damage;

instance_destroy();

