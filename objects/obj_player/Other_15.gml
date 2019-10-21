/// @description WeaponRotationController

if (global.TimeFactor > 0)
{
	with (activeWeapon)
	{
		switch global.CurrentInput
		{
			case InputMethod.Gamepad:
				var _axisVertical = gamepad_axis_value(global.ActiveGamepad, gp_axisrv);
				var _axisHorizontal = gamepad_axis_value(global.ActiveGamepad, gp_axisrh);
				var _axisChanged = gamepad_check_axis(global.ActiveGamepad, gp_axisrv, gp_axisrh);
				
				if (_axisChanged)
				{
					var _newDirection = point_direction(0, 0, _axisHorizontal, _axisVertical);
					directionCurrent = lerp(0,_newDirection, 0.75);
				}
			break;
			
			case InputMethod.KeyboardMouse:
				var _mouseDistance = point_distance(weaponOwner.x, weaponOwner.y, mouse_x, mouse_y);
				
				if (_mouseDistance > 3)
				{
					directionCurrent = point_direction(x,y,mouse_x,mouse_y);
				}
			break;
		}
	}
}