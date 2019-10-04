/// @description ObjectsDrawSequence

if (instance_exists(obj_base))
{
	if (instance_exists(obj_pathgrid))
	{
		mp_grid_draw(global.PathGrid);
	}
	
	DrawFloorObjects;
	
	DrawUnsortable(DrawPosition.OnFloor);
	
	DrawFloorEffects;
	
	DrawUnsortable(DrawPosition.OnFloorEffects);

	DrawShadow;

	DrawSortableObjects;

	DrawDissolve;

	DrawFlash;
	
	DrawUnsortable(DrawPosition.OnAll);
}