if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Press Space to talk.";
}


if (playerInRange && keyboard_check_pressed(vk_space) && !inDialogue) {
    inDialogue = true; // Set NPC state to in dialogue
    currentDialogueIndex = 0;
}

 

if (!place_meeting(x, y, obj_player) && playerInRange) {
    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}
if (inDialogue && keyboard_check_pressed(vk_space)) {
    currentDialogueIndex += 1;
    if (currentDialogueIndex >= array_length_1d(dialogueTexts)) {
        inDialogue = false; // Reset NPC state to not in dialogue
        currentDialogueIndex = 0; // Reset to the beginning if at the end
    }
}

if(place_meeting(x,y,obj_kingroom))
{
instance_destroy()
}
