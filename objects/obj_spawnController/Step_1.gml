var _enemiesLength = array_length_1d(enemies) - 1;
var _dataLength = array_height_2d(enemyData);

if (_enemiesLength < global.DifficultyLevel && global.DifficultyLevel < _dataLength)
{
	enemies[global.DifficultyLevel] = ds_map_create();
	ds_map_add(enemies[global.DifficultyLevel], "enemy_id", enemyData[global.DifficultyLevel,0]);
	ds_map_add(enemies[global.DifficultyLevel], "spawn_weight", enemyData[global.DifficultyLevel, 1]);
	
	for (var i = 0; i < array_length_1d(enemies); i++)
	{
		var map = enemies[i];
		var weight = map[? "spawn_weight"];
		weightSum += weight;
	}
}

if global.DifficultyLevel == 1 && enemyCountMax != 8
{
	enemyCountMax = 8;
}

if global.DifficultyLevel == 2 && enemyCountMax != 12
{
	enemyCountMax = 12;
	spawnPauseTime = set_time(3);
}

if global.DifficultyLevel == 3 && enemyCountMax != 18 
{
	enemyCountMax = 18;
}

if global.DifficultyLevel == 4 && enemyCountMax != 24
{
	enemyCountMax = 24;
	spawnPauseTime = set_time(2);
}

if global.DifficultyLevel == 5 && enemyCountMax != 32
{
	enemyCountMax = 32;
}