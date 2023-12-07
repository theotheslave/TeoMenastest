// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.textboxSequence = -1




function create_textbox(){

var _textbox = instance_create_layer(0,0,"TextBox", oTextBox)



var _camX = camera_get_view_x(view_camera);
var _camY = camera_get_view_y(view_camera)
global.textboxSequence = layer_sequence_create("TextBox", _camX, _camY, seqText)

}



function close_textbox(){

layer_sequence_destroy(global.textboxSequence);
instane_destroy(oTextBox);


}