/// @description Insert description here

// Inherit the parent event
event_inherited();

visible = false;

global.Player = instance_create_layer(x, y, "entities", obj_player);
global.Camera.isFollowingPlayer = true;
global.Player.currentState = PlayerState.Spawn;
global.Player.drawAlpha = 0;