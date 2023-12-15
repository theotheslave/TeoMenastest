#region Player in range

if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Press Space to talk.";
}

if (!place_meeting(x, y, obj_player) && playerInRange) {
    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}

#endregion

#region States of dialogue

if (playerInRange && keyboard_check_pressed(vk_space) && !global.inDialogue) {
    global.inDialogue = true; // Set NPC state to in dialogue
	localDialogue = true;
    currentDialogueIndex = 0;
}

 
if (global.inDialogue && keyboard_check_pressed(vk_space) && localDialogue) {
    currentDialogueIndex += 1;
    if (currentDialogueIndex >= array_length_1d(dialogueTexts)) {
        global.inDialogue = false; // Reset NPC state to not in dialogue
		localDialogue = false;
        currentDialogueIndex = 0; // Reset to the beginning if at the end
    }
}

#endregion