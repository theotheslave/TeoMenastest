if (obj_player.y <= obj_wolf.y ){
move_towards_point(obj_player.x,obj_player.y, xspeedenemy);
}

if place_meeting(x+xspeedenemy,y+yspeedenemy,obj_void) ==true {
	xspeedenemy = 3
	yspeedenemy = 3
}
else{
yspeedenemy= 5
xspeedenemy= 5
}