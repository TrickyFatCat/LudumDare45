/// @description ObjectsDrawSequence

if (instance_exists(obj_base))
{
	DrawFloorEffects;
	
	DrawFloorObjects;
	
	DrawUnsortable(DrawPosition.OnFloor);
	
	DrawUnsortable(DrawPosition.OnFloorEffects);

	DrawShadow;

	DrawSortableObjects;
	
	DrawDissolve;

	DrawFlash;
	
	DrawUnsortable(DrawPosition.OnAll);
}