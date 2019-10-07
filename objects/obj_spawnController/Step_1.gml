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

if global.DifficultyLevel == 2 && enemyCountMax != 10
{
	enemyCountMax = 10;
	spawnPauseTime = set_time(2);
}

if global.DifficultyLevel == 3 && enemyCountMax != 14 
{
	enemyCountMax = 14;
}

if global.DifficultyLevel == 4 && enemyCountMax != 18
{
	enemyCountMax = 18;
	spawnPauseTime = set_time(1);
}

if global.DifficultyLevel == 5 && enemyCountMax != 22
{
	enemyCountMax = 22;
}
if global.DifficultyLevel == 6 && enemyCountMax != 26
{
	enemyCountMax = 26;
	spawnPauseTime = set_time(0.75);
}
if global.DifficultyLevel == 7 && enemyCountMax != 30
{
	enemyCountMax = 30;
}
if global.DifficultyLevel == 8 && enemyCountMax != 35
{
	enemyCountMax = 35;
}