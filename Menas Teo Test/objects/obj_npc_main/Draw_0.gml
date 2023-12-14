//Draw Event for NPC
draw_self();


if (global.inDialogue && localDialogue) {
    var dialogue = dialogueTexts[currentDialogueIndex];
   var textY = y - 30; // Positioned above the NPC
   var textX = x - string_width(dialogue) / 2;
   draw_text(textX, textY, dialogue);

    
} else if (playerInRange) {
    draw_text(x - string_width("Press Space to talk") / 2, y - 30, "Press Space to talk");
    // Resume NPC actions after dialogue is finished
    spd = originalspeed;
    // npc_movement_speed = original_movement_speed;
}

if global.inDialogue {
	// Stop NPC actions during dialogue (replace this with your actual NPC actions)
    // For example, you might want to pause animations or movement
    spd = 0;
    // npc_movement_speed = 0;
}