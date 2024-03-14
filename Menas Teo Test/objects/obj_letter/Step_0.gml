if (place_meeting(x, y, obj_player)) { 
    draw_set_font(font); 
	dialogueText = "Press E to pick up";
	draw_text(x, y + 30, dialogueText); 
} 

if (!place_meeting(x, y, obj_player)) { 
    dialogueText = ""; 
    draw_text(x, y + 30, dialogueText); 
} 

if (place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("E"))) { 
    global.collectedletter = true 
	instance_destroy() 
	startDialogue("pickupletter")
} 










