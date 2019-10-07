/// @description RespondOnPickupCollision

//Parameters
var _flashColour = c_green;
var _flashPower = 2;

//Sequence
EnableFlash(_flashColour, _flashPower);

ammoCurrent = min(ammoCurrent + 20, 100);
ds_map_replace(ammoData[activeWeapon.ammoID],"ammoCurrent",ammoCurrent);

PlaySound(sfx_pickup);

instance_destroy(other);