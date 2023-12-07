inputX = 0 
inputY = 0


movement = 1;
moving = false; 
moveDirection= 0 
targetX = x
targetY = y



path = path_add();
pathNextPoint = 0;

pathPointX = 0;
pathPointY = 0;


//find path point

move_to_point = function( targetX, targetY ){

var _canMove = mp_grid_path(global.AIGrid, path, x, y, targetX, targetY, false)
if (_canMove){

	pathNextPoint= 1;
	pathPointX = 0;
	pathPointY = 0;

}



}


