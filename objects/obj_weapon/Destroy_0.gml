// Inherit the parent event
event_inherited();

if (!ds_list_empty(laserObjects))
{
	ds_list_destroy(laserObjects);
}

if (!ds_list_empty(hitscanObjects))
{
	ds_list_destroy(hitscanObjects);
}