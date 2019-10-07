/// @description RespondOnPickupCollision

//Parameters
var _flashColour = c_green;
var _flashPower = 2;

//Sequence
EnableFlash(_flashColour, _flashPower);

ammoCurrent = min(ammoCurrent + 20, ammoCurrentMax);
ds_map_replace(ammoData[activeWeapon.ammoID],"ammoCurrent",ammoCurrent);

audio_play_sound(sfx_pickup, 1, false);

instance_destroy(other);