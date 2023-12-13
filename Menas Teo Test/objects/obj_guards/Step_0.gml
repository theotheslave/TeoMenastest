if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Hello there! Press Space to talk.";
}


if (playerInRange && keyboard_check_pressed(vk_space)) {
    // You can replace the following line with the actual dialogue you want
    show_message("NPC: " + "Greetings, traveler!");

    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}
if (!place_meeting(x, y, obj_player) && playerInRange) {
    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}
