//Step Event for NPC
if irandom(room_speed * 2) = 1{

var Range = 256; 
destX = x + irandom_range(-Range, Range)
destY = y + irandom_range(-Range, Range)
}


if destX < 0 {destX =0}
if destY < 0 {destY= 0}
if destX > room_width {destX = room_width}
if destY > room_height {destY = room_height}

if collision_circle(destX, destY, sprite_width/2, obj_void, 0,0){

destX =x
destY = y
show_debug_message("HELP HELP HELP")


}
else {

if distance_to_point(destX, destY) > 1{

mp_potential_step_object(destX, destY,spd, obj_void);
image_speed = 1
}
else{

destX = x
destY = y
}
}

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



