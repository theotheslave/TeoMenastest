/// @description Insert description here
// You can write your code in this editor
 
#region Collision checks
 
if (place_meeting (x, y, obj_player) && global.current_button_1 <= buttonID && !playerCheck) {
	playerCheck = true;
	text = "Press Space to push";
}

if (!place_meeting (x, y, obj_player) && playerCheck) {
	playerCheck = false;
	text = "";
}

#endregion

#region Key checks

if (keyboard_check (vk_space) && !pressed && playerCheck && global.current_button_1 = buttonID) {
	pressed = true;
	global.current_button_1 ++;
	audio_play_sound(snd_button_correct,0,0);
}

if (keyboard_check (vk_space) && !pressed && playerCheck && global.current_button_1 < buttonID) {
	global.current_button_1 = 0;
	audio_play_sound(snd_button_wrong,0,0);
}

// For debugging
if keyboard_check (ord("R")) {
	global.current_button_1 = 0;
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

if global.current_button_1 <= buttonID {
	pressed = false;
}

sprite_index = sprite[state];

#endregion
