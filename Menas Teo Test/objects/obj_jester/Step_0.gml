if(place_meeting(x,y,obj_player) && global.jesterdialogue == 0 && keyboard_check_pressed(ord("E"))){
	startDialogue("jester1")
	global.jesterdialogue ++
	instance_destroy(inst_5EB2112C)
}
if(place_meeting(x,y,obj_player) && global.jesterdialogue >= 1 && global.jesterdialogue < 12 && keyboard_check_pressed(ord("E"))){
	startDialogue("jester2")
	
}
if(place_meeting(x,y,obj_player) && global.jesterdialogue >= 12 && keyboard_check_pressed(ord("E"))){
	startDialogue("jester3")
}