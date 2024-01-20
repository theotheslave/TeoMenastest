if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space))
{
    startDialogue("redpuzzleletter")
    dialogueText = ""; 
} 
if (place_meeting(x,y,obj_player) && global.collectedletter)
{
	dialogueText = "Press E to insert the letter"
	draw_text(x, y - 30, dialogueText) 
}
if (!place_meeting(x,y,obj_player))
{
	dialogueText = ""
}
if (place_meeting(x, y, obj_player)  && keyboard_check_pressed(ord("E")) && global.collectedletter) { 
    instance_destroy(inst_1726FFF0)
	instance_destroy() 
} 









