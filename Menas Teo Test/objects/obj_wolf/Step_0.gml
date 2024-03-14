
	move_towards_point(obj_player.x,obj_player.y, xspeedenemy);

if place_meeting(x+xspeedenemy,y+yspeedenemy,obj_void) ==true {
	xspeedenemy = 4
	yspeedenemy = 4
}
else{
yspeedenemy= 5
xspeedenemy= 5
}

if place_meeting(x,y,wolf_wall){
xspeedenemy =0
yspeedenemy =0

}

else{
xspeedenemy = 5
yspeedenemy = 5

}