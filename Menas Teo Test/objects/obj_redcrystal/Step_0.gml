if(place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && dialogue == 0){
	startDialogue("redcrystal")
    dialogue ++
}

if(place_meeting(x,y,obj_player) && keyboard_check_pressed(ord("E")) && dialogue == 1) {
instance_destroy()
//	room_goto("write your room here")
}







