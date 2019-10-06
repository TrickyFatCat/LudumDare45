/// @description Trancendence

var _trancendenceTime = 0.4;
var _scaleStepFactor = set_step(_trancendenceTime);
var _targetScale = 2;

// Sequence
if (drawScaleX < _targetScale)
{
	var _scaleStep = _targetScale * _scaleStepFactor;
	drawScaleX = approach_timefactor(drawScaleX, _targetScale, _scaleStep);
	drawScaleY = drawScaleX;
	EnableFlash(c_red, 1);
}
else
{
	currentState = EntityState.Death;
}