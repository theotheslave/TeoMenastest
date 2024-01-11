/// @description Insert description here
// You can write your code in this editor
 
#region Collision checks
 
if (place_meeting (x, y, obj_player) && global.current_button <= buttonID && !playerCheck) {
	playerCheck = true;
	text = "Press Space to push";
}

if (!place_meeting (x, y, obj_player) && playerCheck) {
	playerCheck = false;
	text = "";
}

#endregion

#region Key checks

if (keyboard_check (vk_space) && !pressed && playerCheck && global.current_button = buttonID) {
	pressed = true;
	global.current_button ++;
}

if (keyboard_check (vk_space) && !pressed && playerCheck && global.current_button < buttonID) {
	global.current_button = 0;
}

// For debugging
if keyboard_check (ord("R")) {
	global.current_button = 0;
	show_debug_message ("Current button reset")
}

#endregion

#region Sprite States

if pressed {
	state = PRESSED;
	playerCheck = false;
}

if !pressed {
	state = UNPRESSED;
}

if global.current_button <= buttonID {
	pressed = false;
}

sprite_index = sprite[state];

#endregion
