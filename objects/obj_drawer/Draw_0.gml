/// @description ObjectsDrawSequence

if (instance_exists(obj_base))
{
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