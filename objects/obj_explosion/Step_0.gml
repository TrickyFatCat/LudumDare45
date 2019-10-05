
if (dealingDamage)
{
	if (collision_circle(x, y, explosionRadius, obj_entity, true, true)) //Check if there any pickup
	{
		//Create and fill pickups
		var _targetsList = ds_list_create();
		collision_circle_list(x, y, explosionRadius, obj_entity, true, true, _targetsList, true);
	
		if (!ds_list_empty(_targetsList))
		{
			#region //Pickup checking
			for (var i = 0; i < ds_list_size(_targetsList); i++)
			{
				var _target = _targetsList[| i];
			
				//Pull Pickup
				with (_target)
				{
					if (!isInvulnerable)
					{
						DealDamage(other.damage);
						directionCurrent = point_direction(x, y, other.x, other.y) - 180;
					}
				}
			}
			#endregion
		}
		else
		{
			ds_list_destroy(_targetsList);
		}
	}
	
	dealingDamage = false;
}