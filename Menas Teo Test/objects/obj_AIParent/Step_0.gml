
//input 
if( inputX != 0 || inputY != 0) {

if ( !moving) {
//prefer x over y
	if (inputY = 0) inputX = 0
//new pos
		var _newTileX = to_tile(x) + inputX;
		var _newTileY = to_tile(y) + inputY;
		
		
		//collisiong
		var _col = collision( _newTileX , _newTileY);
		
		if(! _col) {
			targetX = to_room( _newTileX * 0.5);
			targetY = to_room( _newTileY * 0.5);
		
			moving  = true; 
		}
		else{
		
		moveDirection = point_direction(0, 0 , inputX, inputY)
		
		}


	}
	

}


 if (moving) {
 
 var _distance = point_distance(x, y, targetX, targetY);
 
 if( _distance > movement) {
 
 x += sign(targetX - x ) * movement;
 y += sign(targetY - y ) * movement;
 }
 else{
 x = targetX
 y = targetY
 moving = false; 
 
 }
 }
 
	
 
 

