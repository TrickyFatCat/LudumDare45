/// @description CameraMovement

// Parameters
var _cameraFollowFactor = 0.09;
var _distanceMax =	190;

// Set target coordinates
if (instance_exists(global.Player))
{
	// Set camera position
	
	var _playerX = playerX;
	var _playerY = playerY;
	
	var _cameraOriginX = cameraWidth * 0.5;
	var _cameraOriginY = cameraHeight * 0.5;

	switch (global.CurrentInput)
	{
		case InputMethod.KeyboardMouse:
			var _direction = point_direction(_playerX, _playerY, mouse_x, mouse_y);
			var _aimDistance = point_distance(_playerX, _playerY, mouse_x, mouse_y);
			var _distanceAlpha = min(_aimDistance / _distanceMax, 1);
		break;
		
		case InputMethod.Gamepad:
			var _axisH = gamepad_axis_value(global.ActiveGamepad, gp_axisrh);
			var _axisV = gamepad_axis_value(global.ActiveGamepad, gp_axisrv);
			var _direction = point_direction(0, 0, _axisH, _axisV);
			var _distanceAlpha = min(point_distance(0, 0, _axisH, _axisV), 1);
		break;
	}
	
	var _distance = lerp(0, _distanceMax, _distanceAlpha);
	var _endPointX = _playerX + lengthdir_x(_distance, _direction)
	var _endPointY = _playerY + lengthdir_y(_distance, _direction)

	var _targetPositionX = lerp(playerX, _endPointX, 0.2) - _cameraOriginX;      
	var _targetPositionY = lerp(playerY, _endPointY, 0.2) - _cameraOriginY; 

	var _targetDistance = point_distance(x, y, _targetPositionX, _targetPositionY);
	var _targetDirection = point_direction(x, y, _targetPositionX, _targetPositionY);
	var _cameraFollowSpeed = _targetDistance * _cameraFollowFactor;    

	// Change cameraposition
	x += lengthdir_x(_cameraFollowSpeed, _targetDirection);
	y += lengthdir_y(_cameraFollowSpeed, _targetDirection);

	// Clamp camera position
	x = clamp(x, _cameraOriginX, room_width - _cameraOriginX);
	y = clamp(y, _cameraOriginY, room_height - _cameraOriginY);
}
else
{
	x = 0;
	y = 0;
}

// Update camera view position
if (global.TimeFactor > 0)
{
	camera_set_view_pos(cameraViewport, x, y);
}