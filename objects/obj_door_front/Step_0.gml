/// @description Insert description here

switch (currentState)
{
	case DoorState.Closed:
		image_speed = 0;
		
		
		var _offsetY = lengthdir_y(32, 90);
		var _y = y + _offsetY;
		var _offsetXX = lengthdir_x(128, 0);
		var _offsetYY = lengthdir_y(48, 270);
		var _xx = x + _offsetXX;
		var _yy = _y + _offsetYY;
		
		var _playerIsNear = collision_rectangle(x, _y, _xx, _yy, obj_player, true, true);
		
		if (_playerIsNear)
		{
			var _key = keyboard_check_pressed(ord("E"))
			if (_key)
			{
				currentState = DoorState.TransitionOpen;
			}
		}
	break;
	
	case DoorState.TransitionOpen:
		image_speed = 1;
	break;
	
	case DoorState.Opened:
		image_speed = 0;
		mask_index = spr_1pix;
		
		doorCloseTimer += global.TimeFactor;
		
		var _timeToClose = check_timer(doorCloseTimer, doorCloseTime);
		
		if (_timeToClose)
		{
			doorCloseTimer = 0;
			currentState = DoorState.TranstionClose;
		}
	break;
	
	case DoorState.TranstionClose:
		image_speed = -1;
		mask_index = spr_door_front;
		
		var _pushSpeed = 2;
		
		with obj_player
		{
			var _playerDirection = point_direction(x, y, other.x, other.y) + 180;
			while (place_meeting(x, y, other))
			{
				//var push_x = lengthdir_x(_pushSpeed, _playerDirection);
				var push_y = lengthdir_y(_pushSpeed, _playerDirection);
				//x += push_x;
				y += push_y;	
			}
		}
		
	break;
}