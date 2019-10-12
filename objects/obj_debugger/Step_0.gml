///// @description Insert description here
//if (global.ActiveGamepad != noone)
//{
//	var _speedFactor = 0.01;
//	var _dpadUp = gamepad_button_check(global.ActiveGamepad, gp_padu);
//	var _dpadDown = gamepad_button_check(global.ActiveGamepad, gp_padd);
//	var _deadZone = gamepad_get_axis_deadzone(global.ActiveGamepad);


//	_deadZone += _dpadUp * _speedFactor;
//	_deadZone -= _dpadDown * _speedFactor;
//	_deadZone = clamp(_deadZone, 0, 1);

//	gamepad_set_axis_deadzone(global.ActiveGamepad, _deadZone);
//}


//if (mouse_check_button_pressed(mb_right))
//{
//	SpawnSplatterEffect(mouse_x, mouse_y, vfx_splatter_blood, 100, 8);
//}