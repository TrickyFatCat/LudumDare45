/// @description CameraMovement

// Parameters
var _cameraFollowFactor = 0.075;
var _targetPositionX;
var _targetPositionY;

// Set target coordinates
if (instance_exists(global.Player))
{
	var _targetPositionX = playerX;
	var _targetPositionY = playerY;
}
else
{
	var _targetPositionX = 0;
	var _targetPositionY = 0;
}
// Set camera position
var _cameraPositionX = cameraWidth * 0.5;
var _cameraPositionY = cameraHeight * 0.5;

// Calculate distance and speed
var _targetDistance = point_distance(x, y, _targetPositionX, _targetPositionY);
var _targetDirection = point_direction(x, y, _targetPositionX, _targetPositionY);
var _cameraFollowSpeed = _targetDistance * _cameraFollowFactor;

// Change cameraposition
x += lengthdir_x(_cameraFollowSpeed, _targetDirection);
y += lengthdir_y(_cameraFollowSpeed, _targetDirection);

// Clamp camera position
x = clamp(x, cameraWidth / 2, room_width - cameraWidth / 2);
y = clamp(y, cameraHeight / 2, room_height - cameraHeight / 2);

// Update camera view position
camera_set_view_pos(cameraViewport, x - _cameraPositionX, y - _cameraPositionY);