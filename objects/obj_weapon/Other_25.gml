/// @description CustomDrawSpriteHandler

// Parameters
var _recoilDeltaX = lengthdir_x(recoilPowerCurrent, directionCurrent);
var _recoilDeltaY = lengthdir_y(recoilPowerCurrent, directionCurrent);
var _x = x;
var _y = y - z - offsetZ;

// Draw laser sight
if (laserSightEnabled) && (visible)
{
	var _scaleX = SortHitscanCollisions(directionCurrent, collisionTargets);
	draw_sprite_ext(spr_1pix, image_index, _x, _y, _scaleX - 2, 1, drawAngle, c_red, lasersightAlpha);
}

// Draw weapon
if (visible)
{
	draw_sprite_ext(weaponSprite, image_index, _x - _recoilDeltaX, _y - _recoilDeltaY, drawScaleX, drawScaleY, drawAngle, image_blend, drawAlpha);
}