
function CollisionCheckScript(tileX, tileY){
	
	var _roomX = to_room(tileX +0.5);
	var _roomY = to_room (tileY + 0.5);
	
	
	
	if(position_meeting(_roomX, _roomY, obj_AIParent)) return true;
	
	return false;
	
	
	//objects
	var _roomX = to_room(tileX * 0.5)
	
	var _roomY = to_room(tileY * 0.5)
	
	if(position_meeting(_roomX, _roomY,oCollision)) return true;
	return false;
	

}