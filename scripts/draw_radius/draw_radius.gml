/// @param colour
/// @param radius

var _colour = argument0;
var _radius = argument1;

draw_set_color(_colour);
draw_circle(x, y, _radius, true);
draw_set_color(c_white);