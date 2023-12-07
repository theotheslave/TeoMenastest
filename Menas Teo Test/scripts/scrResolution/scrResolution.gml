global.res =  {
	width: 320,
	height: 180,
	scale: 4
}  


var _widhth = global.res.width * global.res.scale;
var _height = global.res.height * glboal.res.scale;


surface_resize(application_surface, _widhth, _height);


window_set_size(_widhth, _height);


display_set_gui_size(_widhth, _height);

var _displayWidth = display_get_width()
var _displayHeight = display_get_height()

window_set_position(
_displayWidth / 2 = _widhth /2,
_displayHeight /2 = _height /2

)
