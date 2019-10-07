/// Spawn pause timer
spawnPauseTime = set_time(3);
spawnPauseTimer = 0;

/// Enemies count limits
enemyCountMax = 10;

/// Spawn lists
spawnList = ds_list_create();
var _spawnPointsCount = instance_number(obj_spawn_enemy);

for (var i = 0; i < _spawnPointsCount; i++)
{
	var _spawnPoint = instance_find(obj_spawn_enemy, i);
	
	ds_list_add(spawnList, _spawnPoint); 
}


weightSum = 0;

// Monsters to spawn
enemyData[0, 0] = obj_enemy_imp_kamikaze;
enemyData[0, 1] = 40;
enemyData[1, 0] = obj_enemy_imp;
enemyData[1, 1] = 20;
enemyData[2, 0] = obj_barrel;
enemyData[2, 1] = 20;
enemyData[3, 0] = obj_enemy_zombie_pistol;
enemyData[3, 1] = 10;
enemyData[4, 0] = obj_enemy_zombie_shotgun;
enemyData[4, 1] = 150;
enemyData[5, 0] = obj_enemy_zombie_rocketlauncher;
enemyData[5, 1] = 150;


enemies[global.DifficultyLevel] = ds_map_create();

ds_map_add(enemies[global.DifficultyLevel], "enemy_id", enemyData[global.DifficultyLevel, 0]);
ds_map_add(enemies[global.DifficultyLevel], "spawn_weight", enemyData[global.DifficultyLevel, 1]);

for (var i = 0; i < array_length_1d(enemies); i++)
{
	var _map = enemies[i];
	var _weight = _map[? "spawn_weight"];
	weightSum += _weight;
}

enemyIsChosen = false;
enemyID = noone;