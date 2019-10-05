/// @description OutlineShaderHandler

//Parameters
var _shader = shd_outline;

var _spriteExists = sprite_exists(sprite_index)
var _pixelWidht = shader_get_uniform(_shader, "pixelWidth");
var _pixelHeight = shader_get_uniform(_shader, "pixelHeght");

if (_spriteExists)
{
	var _texture = sprite_get_texture(sprite_index,0);
	texelWidth = texture_get_texel_width(_texture);
	texelHeight = texture_get_texel_height(_texture);
}

//Sequence
with (obj_base) 
{
	if ((visible) && (_spriteExists))
	{
		shader_set(_shader);
		shader_set_uniform_f(_pixelWidht, texelWidth);
		shader_set_uniform_f(_pixelHeight, texelHeight);
		draw_sprite_ext(sprite_index, image_index, x, y - z, drawScaleX, drawScaleY, drawAngle, drawColour, drawAlpha);
		shader_reset();
	}
}