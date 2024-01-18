if (place_meeting(x, y, obj_player)) { 
	draw_set_font(font); 
	 draw_text(x, y - 30, dialogueText); 
} 

if (place_meeting(x, y, obj_player) && global.collectedbook) 
{ 
	dialogueText = "Press E to move the bookshelf" 
	draw_text(x, y - 30, dialogueText); 
} 

if (place_meeting(x, y, obj_player) && global.collectedbook && keyboard_check_pressed(ord("E"))) { 
	instance_destroy(inst_5B7820B7) 
	instance_destroy(inst_76064783) 
	instance_destroy(inst_21B40E70) 
	instance_destroy(inst_352F5557) 
	sprite_index = spr_fullbookshelf 
	x = x - 128  
} 








