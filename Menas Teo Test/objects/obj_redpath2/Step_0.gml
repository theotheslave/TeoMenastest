if(place_meeting(x,y, obj_player)){
	walked = 1
}
if(!place_meeting(x,y,obj_player && walked == 1)){
	walked = 2
}
if(walked == 2){
	instance_change(obj_redwall,true)
}







