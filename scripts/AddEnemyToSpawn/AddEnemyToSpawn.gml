/// @param position
/// @param enemyID
/// @param count

var _position = argument0;
var _enemyID = argument1;
var _count = argument2;

ds_grid_add(spawnGrid, 0, _position, _enemyID);
ds_grid_add(spawnGrid, 1, _position, _count);