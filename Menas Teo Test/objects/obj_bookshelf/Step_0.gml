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
	instance_destroy(inst_5E51F7B)
	instance_destroy(inst_29D82479)
	instance_destroy(inst_53DF9116)
	instance_destroy(inst_D3DABA2)
	sprite_index = spr_fullbookshelf
	x = x - 128 
}










