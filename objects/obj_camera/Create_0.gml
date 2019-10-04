/// @description Camera parameters

// Main settings
global.Camera = id;

// Macroses
#macro cameraViewport	view_camera[0]
#macro cameraX			camera_get_view_x(cameraViewport)
#macro cameraY			camera_get_view_y(cameraViewport)
#macro cameraWidth		camera_get_view_width(cameraViewport)
#macro cameraHeight		camera_get_view_height(cameraViewport)

// User events
#macro MoveCamera	event_user(0)
#macro CameraShaker event_user(1)

// Follow parameters
isFollowingPlayer = false;

// Camera shake parameters
cameraShakeValue = 0;
angularShakeEnabled = false; // Enables angular shaking