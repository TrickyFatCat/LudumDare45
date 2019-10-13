///// @description ResolutionDebugController

if (keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(global.ActiveGamepad, gp_stickl))
{
	resolutionZoom++;
	if (resolutionZoom > resolutionZoomMax)
	{
		resolutionZoom = 1;
	}
	
	UpdateResolution;
}

//// Set interface resolutionZoom
//var _zoomSpeed = 0.01;
//var _zoomIn = keyboard_check(vk_right);
//var _zoomOut = keyboard_check(vk_left);

//interfaceZoom += _zoomIn * _zoomSpeed;
//interfaceZoom -= _zoomOut * _zoomSpeed;
//interfaceZoom = clamp(interfaceZoom, 0.1, 5);

//display_set_gui_size(global.IdealWidth * interfaceZoom, global.IdealHeight * interfaceZoom);

//// Set view resolutionZoom
//var _zoomSpeed = 0.01;
//var _zoomIn = keyboard_check(vk_up);
//var _zoomOut = keyboard_check(vk_down);

//viewZoom += _zoomIn * _zoomSpeed;
//viewZoom -= _zoomOut * _zoomSpeed;
//viewZoom = clamp(viewZoom, 0.1, viewZoomMax);

//camera_set_view_size(view_camera[0], global.IdealWidth / viewZoom, global.IdealHeight / viewZoom);