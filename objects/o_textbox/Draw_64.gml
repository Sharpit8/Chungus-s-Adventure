
var _arr = messages[| messageID]

var _name = _arr[MSG.NAME]
var _image = _arr[MSG.Image]

draw_set_font(_arr[MSG.font])

if _name = "You"
{voicesounduse = so_playervoice}
else
{voicesounduse = voicesound}

draw9slice(x,y,width,height,s_blackss,0);

var _drawX = x + padding
var _drawY = y + padding

if (sprite_exists(_image)){
	var _imageW = sprite_get_width(_image)
	var _imageH = sprite_get_height(_image)
	
	draw_sprite(_image,0,_drawX + _imageW / 2, _drawY + _imageH / 2)
	
	_drawX += _imageW + padding;
}

draw_set_color(c_white)

draw_text(_drawX,_drawY,_name)

_drawY += string_height(_name) + padding

var _maxW = width - (_drawX + padding)

draw_text_ext(_drawX,_drawY,messageText,-1,_maxW)

draw_set_color(c_white)
