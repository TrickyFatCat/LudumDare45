if (isActive)
{
	var _gridHeight = ds_grid_height(spawnGrid);

	for (var i = 0; i < _gridHeight; i++)
	{
		var _enemyID = spawnGrid[# 0, i];
		var _count = spawnGrid[# 1, i];
	
		for (var k = 0; k < _count; k++)
		{
			var _x = random_range(x, x + sprite_width);
			var _y = random_range(y, y + sprite_height);
			var _enemy = instance_create_layer(_x, _y, "entities", _enemyID);
			if (attackOnSpawn)
			{
				with (_enemy)
				{
					currentState = EntityState.Move;
				}
			}
		}
	}
}

isActive = false;