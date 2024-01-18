if (place_meeting(x, y, obj_player) && !playerInRange) { 
    playerInRange = true; 
	draw_set_font(font); 
} 

if (playerInRange && keyboard_check_pressed(vk_space))
{
    startDialogue("redpuzzleletter")
    dialogueText = ""; 
    playerInRange = false; 
} 

if (place_meeting(x, y, obj_player) && playerInRange && keyboard_check_pressed(ord("E")) && global.collectedletter) { 
    instance_destroy()
	instance_destroy() 
} 









