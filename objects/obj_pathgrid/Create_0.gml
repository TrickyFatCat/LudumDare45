/// @description Gridcreation

//Cells parameters
var _cell = 16
global.PathCellWidth = _cell;
global.PathCellHeight = _cell;

//Cells number calculatuons
var _cellsNumberHorizontal = room_width / global.PathCellWidth;
var _cellsNumberVertical = room_width / global.PathCellHeight;

//Create grid
global.PathGrid = mp_grid_create(0, 0, _cellsNumberHorizontal, _cellsNumberVertical, global.PathCellWidth, global.PathCellHeight);

//Add obstacles
mp_grid_add_instances(global.PathGrid, obj_wall, true);
mp_grid_add_instances(global.PathGrid, obj_well, true);
mp_grid_add_instances(global.PathGrid, obj_pit, true);
