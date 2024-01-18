if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
	draw_set_font(font);
}
if (!place_meeting(x, y, obj_player) && playerInRange) {
    dialogueText = "";
    playerInRange = false;
}
if (place_meeting(x, y, obj_player) && playerInRange && keyboard_check_pressed(ord("E"))) {
    global.collectedbook = true
	instance_destroy()
}











