/// @description ResolutionInitializer

// User events
#macro UpdateResolutionHTML event_user(0);

// Parameters
global.IdealWidth = 0;
global.IdealHeight = 540;
resolutionZoom = 1;
resolutionZoomMax = 1;
interfaceZoom = 2;
viewZoom = 0.65;
viewZoomMax = 20;

// Sequence
aspectRatio = browser_width / browser_height;

//global.IdealWidth = round(global.IdealHeight * aspectRatio);
global.IdealHeight =round(global.IdealWidth/aspectRatio);
global.IdealWidth = round(global.IdealWidth);
global.IdealHeight = round(global.IdealHeight);

if (browser_width mod global.IdealWidth != 0)
{
	var d = round(browser_width / global.IdealWidth);
	global.IdealWidth = browser_width / d;
}

if (browser_height mod global.IdealHeight != 0)
{
	var d = round(browser_height / global.IdealHeight);
	global.IdealHeight = browser_height / d;
}

// Check for odd numbers
if (global.IdealWidth & 1)
{
	global.IdealWidth++;
}
if (global.IdealHeight & 1)
{
	global.IdealHeight++;
}

//resolutionZoomMax = floor(browser_width() / global.IdealWidth);
resolutionZoomMax = floor(browser_height / global.IdealHeight);

//Setup all the view ports so I don't have to.
globalvar MainCamera;
MainCamera = camera_create_view(0, 0, global.IdealWidth, global.IdealHeight, 0, noone, 0, 0, 0, 0);
camera_set_view_size(MainCamera,global.IdealWidth,global.IdealHeight);

for (var i = 1; i <= room_last; i++)
{
	if (room_exists(i))
	{
		room_set_view_enabled(i, true);
		room_set_viewport(i, 0, true, 0, 0, global.IdealWidth, global.IdealHeight);
		room_set_camera(i, 0, MainCamera);
	}
}

resolutionZoom = max(resolutionZoomMax - 1, 1);

UpdateResolutionHTML;