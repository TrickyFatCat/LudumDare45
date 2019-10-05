event_inherited();

// Rotate weapon
rotationOffsetX = lengthdir_x(rotationOffset, directionCurrent);
rotationOffsetY = lengthdir_y(rotationOffset, directionCurrent);

// Flip weapon sprite
if (directionCurrent > 90 && directionCurrent < 270)
{
	drawScaleY = -1;
}
else
{
	drawScaleY = 1;
}
