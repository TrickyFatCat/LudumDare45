ds_list_destroy(spawnList);

for (var i = 0; i < array_length_1d(enemies); i++)
{
	ds_map_destroy(enemies[i]);
}