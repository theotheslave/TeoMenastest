//dialogue pop up 
if (place_meeting(x, y, obj_player) && !playerinrange && global.collectedbow == 0) {
    playerinrange = true;
    dialogueText = "Press Space to pick up the bow";
	draw_set_font(font);
}
if(place_meeting(x,y,obj_player) && playerinrange && global.collectedbow == 0)
{
	if(keyboard_check_pressed(vk_space)){
		global.collectedbow++
	}
	show_debug_message("picked up")
}
if(place_meeting(x,y,obj_player) && playerinrange && global.collectedbow > 0)
{
	playerinrange = true
	dialogueText = "Already picked up!"
	draw_set_font(font)
}
if (!place_meeting(x, y, obj_player) && playerinrange) {
    // Reset dialogue variables
    dialogueText = "";
    playerinrange = false;
}



