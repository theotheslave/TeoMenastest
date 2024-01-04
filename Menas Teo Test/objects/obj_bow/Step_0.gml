//dialogue pop up 
if (place_meeting(x, y, obj_player) && !playerinrange && global.collectedbow == 0) {
    playerinrange = true;
    dialogueText = "Press Space to pick up the bow";
	draw_set_font(font);
}
if(place_meeting(x,y,obj_player) && playerinrange && global.collectedbow == 0)
{
	if(keyboard_check_pressed(vk_space)){
		global.collectedbow++
		instance_destroy()
		show_debug_message("picked up")
	}
	
	
}
//equipping
if(global.collectedbow > 0 && keyboard_check_pressed(ord("E")) && !global.equippedbow)
{
	global.equippedbow = true
}

if(global.collectedbow > 0 && keyboard_check_pressed(ord("Q")) && global.equippedbow)
{
	global.equippedbow = false
}
// shooting
if(global.collectedbow > 0 && mouse_check_button(mb_left)&& global.equippedbow)
{
	instance_create_layer(x,y, "Instances", obj_arrow)
}



