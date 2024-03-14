if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Press Space to talk.";
	startDialogue("YKBegin");
	npcspd = 0;
	spdorg = 0;
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


if(place_meeting(x,y,obj_kingroom))
{
instance_destroy()
}
