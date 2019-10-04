/// @description CameraShakerHandler

if (isShackingCamera)
{
	shotShakeFactorCurrent = min(shotShakeFactorCurrent + shotShakeFactor, 1);
	var _shakeValueCurrent = shakeValue * shotShakeFactorCurrent;
	ApplyShakeToCamera(angularShakeEnabled, _shakeValueCurrent);
}