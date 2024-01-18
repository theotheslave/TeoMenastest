if (place_meeting(x + 15, y, obj_player) && !playerInRange) {
    playerInRange = true;
	draw_set_font(font);
}
if ( global.collectedletter) {
    dialogueText = "Press E to open"
	
}
if (!place_meeting(x + 15, y, obj_player) && playerInRange) {
    dialogueText = "";
    playerInRange = false;
}
if (place_meeting(x + 15, y, obj_player) && playerInRange && global.collectedletter &&  keyboard_check_pressed(ord("E"))) {
	instance_destroy(inst_4AAC773F)
	instance_destroy()
}










