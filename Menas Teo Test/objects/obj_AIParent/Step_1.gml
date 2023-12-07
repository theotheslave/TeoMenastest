x += inputX * movement
y += inputY * movement

if(pathNextPoint > 0) {
	pathPointX = path_get_point_x(path, pathNextPoint) 
	pathPointY =  path_get_point_y(path, pathNextPoint) 
	
	inputX = sign(pathPointX - x)
	inputY = sign(pathPointY - y)
}
else{
	inputX = 0;
	inputY = 0;



}



