/// @param target
/// @param velocityNoiseFactor

var _target = argument0;
var _velocityNoiseFactor = argument1;

_velocityNoiseFactor = clamp(_velocityNoiseFactor, 0, 1);
var _velocityNoise = projectileVelocityCurrent * _velocityNoiseFactor;
var _velocityDelta = random_range(-_velocityNoise, _velocityNoise);

with (_target)
{
	drawAngle = directionCurrent;
	image_angle = drawAngle;
	damage = other.damage;
	heal = other.heal;
	isBounceable = other.projectileBounceEnable;
	velocityCurrent = other.projectileVelocityCurrent + _velocityDelta;
	velocityMax = other.projectileVelocityMax;
	acceleration = other.projectileAcceleration;
	groundFriction = other.projectileFriction;
	bounceFriction = other.projectileBounceFriction;
}