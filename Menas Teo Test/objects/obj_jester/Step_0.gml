if(place_meeting(x,y,obj_player) && global.jesterdialogue == 0 && keyboard_check_pressed(vk_space)){
	startDialogue("jester1")
	global.jesterdialogue ++
	instance_destroy(inst_5EB2112C)
}
if(place_meeting(x,y,obj_player) && global.jesterdialogue == 1 && keyboard_check_pressed(vk_space)){
	startDialogue("jester2")
	
}