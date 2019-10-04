/// @description PickupMagnetHandler

if (collision_circle(x, y, pullDistance, obj_pickup, true, true)) //Check if there any pickup
{
	//Create and fill pickups
	pickupList = ds_list_create();
	collision_circle_list(x, y, pullDistance, obj_pickup, true, true, pickupList, true);
	
	if (!ds_list_empty(pickupList))
	{
		#region //Pickup checking
		for (var i = 0; i < ds_list_size(pickupList); i++)
		{
			var _pickup = pickupList[| i];
			
			//Pull Pickup
			with (_pickup)
			{
				if (isPullable)
				{
					MoveObject();
					var _playerDirection = point_direction(x, y, playerX, playerY);
					pullVelocityCurrent = CalculateAcceleratedVelocity(_playerDirection, pullVelocityCurrent, obj_player.pullVelocityMax, obj_player.pullAcceleration);
				}
			}
		}
		#endregion
	}
	else
	{
		ds_list_destroy(pickupList);
	}
}