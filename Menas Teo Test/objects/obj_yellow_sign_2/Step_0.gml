if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    text = "Press Space to read.";
}


if (playerInRange && keyboard_check_pressed(vk_space)) {
    startDialogue("YellowSign2")	
    text = "";
    playerInRange = true;
	
}

if (!place_meeting(x, y, obj_player) && playerInRange) {
    text = "";
    playerInRange = false;
}


