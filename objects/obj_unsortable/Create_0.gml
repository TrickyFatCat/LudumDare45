event_inherited();

/// @description Adding a unsortable object to a draw list.
ds_list_add(obj_drawer.drawListUnsortable, id);

// Parameters
enum DrawPosition
{
	OnFloor,
	OnFloorEffects,
	OnAll
}

currentDrawPosition = DrawPosition.OnAll;