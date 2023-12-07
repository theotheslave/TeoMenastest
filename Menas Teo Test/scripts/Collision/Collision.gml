// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(tileX, tileY){
	
	var _tilemap = oRoomManager.colTilemap;
	if ( tilemap_get(_tilemap, tileX, tileY)) return true;
	return false;
	

}