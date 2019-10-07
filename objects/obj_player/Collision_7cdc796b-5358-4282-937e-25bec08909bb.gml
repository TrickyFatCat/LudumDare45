/// @description RespondOnPickupCollision

//Parameters
var _flashColour = c_green;
var _flashPower = 2;

//Sequence
EnableFlash(_flashColour, _flashPower);

healthPointsCurrent = min(healthPointsCurrent + 20, 100);

instance_destroy(other);