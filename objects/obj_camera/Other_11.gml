/// @description CameraShaker

// Private parameters
var _cameraShakePower = 5;
var _cameraShakeDrop = 0.1;
var _cameraAngularShakePower = 0.5;

// Shake range calculations
var _shakeRange = power(cameraShakeValue, 2) * _cameraShakePower;

var _x = camera_get_view_x(cameraViewport)
var _y = camera_get_view_y(cameraViewport)

// Add _shakeRange to camera position
x += random_range(-_shakeRange, _shakeRange);
y += random_range(-_shakeRange, _shakeRange);

if (global.TimeFactor > 0)
{
	camera_set_view_pos(cameraViewport, x, y);
}

// Chanege view angle to shake camera angle
if angularShakeEnabled
{
	camera_set_view_angle(cameraViewport, random_range(-_shakeRange, _shakeRange) * _cameraAngularShakePower);
}

// Decrease shake value
if cameraShakeValue > 0
{
	cameraShakeValue = max(cameraShakeValue - _cameraShakeDrop, 0);
}