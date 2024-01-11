if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Press Space to talk.";
}

if place_meeting(x,y,obj_player) && (keyboard_check_pressed(vk_space)){
	startDialogue("YKBegin")
	path_speed = path_action_stop;
	}
else {
	path_speed = path_action_continue;
}
	

if(place_meeting(x,y,obj_kingroom))
{
instance_destroy()
}
