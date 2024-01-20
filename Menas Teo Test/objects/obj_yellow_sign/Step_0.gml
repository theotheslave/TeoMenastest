if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    text = "Press Space to read.";
	draw_set_font(font);
}


if (playerInRange && keyboard_check_pressed(vk_space)) {
    startDialogue("YellowSign1")	
    text = "";
    playerInRange = true;
	
}

if (!place_meeting(x, y, obj_player) && playerInRange) {
    text = "";
    playerInRange = false;
}


