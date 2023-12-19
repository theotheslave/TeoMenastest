draw_self();

// Draw dialogue text
if (playerInRange) {
    // You can adjust the position based on your game's layout
    draw_text(x, y - 30, dialogueText);
}


if (inDialogue) {
    var dialogue = dialogueTexts[currentDialogueIndex];
   var textY = obj_player.y * 2; // Positioned above the NPC
   var textX = x - string_width(dialogue) / 2;
   draw_text(textX, textY, dialogue);

    // Stop NPC actions during dialogue (replace this with your actual NPC actions)
    // For example, you might want to pause animations or movement
    path_speed = 0
    // npc_movement_speed = 0;
} else if (playerInRange) {
    draw_text(x, y - 30, "Press Space to talk");
    // Resume NPC actions after dialogue is finished
	path_speed = npcspd

}
