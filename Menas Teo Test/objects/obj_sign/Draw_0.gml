//Draw Event for NPC
draw_self();

// Draw dialogue text
if (playerInRange) {
    // You can adjust the position based on your game's layout
    draw_text(obj_player.x - 65, obj_player.y - 50, dialogueText);
	draw_set_font(font)

}