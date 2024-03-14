if (place_meeting(x, y, obj_player)) { 
	draw_set_font(font);
	dialogueText = "Press E to pick up";
} 

if (!place_meeting(x, y, obj_player)) { 
    dialogueText = ""; 
} 

if (place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("E"))) { 
    global.collectedbook = true 
	instance_destroy() 
	startDialogue("redbook")
} 









