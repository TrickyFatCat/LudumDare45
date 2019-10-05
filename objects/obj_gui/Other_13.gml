/// @description InterfaceDrawer

if (menuIsActive)
{
	draw_set_font(fnt_text_normal);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);

	var _fullScreenText;
	var _fullScreen = window_get_fullscreen();

	if (_fullScreen)
	{
		menuItem[MainMenuItem.Fullscreen] = "Windowed";
	}
	else
	{
		menuItem[MainMenuItem.Fullscreen] = "Fullscreen";
	}

	for (var i = 0; i < menuItemsCount; i++)
	{
		var _itemText = menuItem[i];
	
		if (menuActiveItem == i)
		{
			//_itemText = string_insert("> ", _itemText, 0);
			var _itemColour = c_white;
		}
		else
		{
			var _itemColour = c_gray;
		}
	
		//if (i == fullScreenItemIndex)
		//{
		//	_itemText = string_insert(_fullScreenText, _itemText, 14);
		//}
	
		var _x = menuX;
		var _y = menuY - (menuItemHeight * (i * 1.5));
	
		draw_text_outline(_x, _y, c_black, _itemColour, _itemText);
	}
}