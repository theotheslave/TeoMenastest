draw_self();

// Draw dialogue text
if (playerInRange) {
    // You can adjust the position based on your game's layout
    draw_text(x, y - 30, dialogueText);
}