var _enemyCountCurrent = instance_number(obj_enemy);
var _listSize = ds_list_size(spawnList);
var _enemiesAlive = instance_number(obj_enemy);


if (global.BattleState == BattleState.Active && _enemyCountCurrent < enemyCountMax)
{
	spawnPauseTimer += global.TimeFactor;
	
	var _pauseIsOver = check_timer(spawnPauseTimer, spawnPauseTime);
	
	if (_pauseIsOver) && _enemiesAlive < enemyCountMax
	{
		spawnPauseTimer = 0;
		
		var _activeSpawnPoints = ds_list_create();
		
		for (var i = 0; i < _listSize; i++)
		{
			var _spawn = spawnList[| i];
			var _spawnState = _spawn.currentState;
			
			if (_spawnState == SpawnPointState.Active)
			{
				ds_list_add(_activeSpawnPoints, _spawn);
			}
		}
		
		var _activeListSize = ds_list_size(_activeSpawnPoints);
		
		if (_activeListSize > 0)
		{
			var _spawnID = irandom_range(0, _activeListSize - 1);
			var _pointForSpawn = _activeSpawnPoints[| _spawnID];
			var _arrayLastIndex = array_length_1d(enemies) - 1;
			
			while (!enemyIsChosen)
			{
				var _enemyID = irandom_range(0, _arrayLastIndex);
				var _map = enemies[_enemyID];
			
				var _roll = irandom_range(1, weightSum);
				var _weight = _map[? "spawn_weight"];
				
				if (_roll <= _weight)
				{
					enemyID = _map[? "enemy_id"];
					enemyIsChosen = true;
				}
			}
			
			if (enemyIsChosen)
			{
				_pointForSpawn.owner = enemyID;
				_pointForSpawn.currentState = SpawnPointState.Reveal;
				enemyIsChosen = false;
			}
		}
		
		ds_list_destroy(_activeSpawnPoints);
	}
}

