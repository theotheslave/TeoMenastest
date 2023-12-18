if (obj_player.y <= obj_wolf.y ){
move_towards_point(obj_player.x,obj_player.y, xspeedenemy);
}

if place_meeting(x+xspeedenemy,y+yspeedenemy,spr_TileSet) ==true {
	xspeedenemy = 5
	yspeedenemy = 5
}
else{
yspeedenemy= 7
xspeedenemy= 7
}