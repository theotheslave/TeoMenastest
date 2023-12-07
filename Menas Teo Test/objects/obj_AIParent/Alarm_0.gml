/// @description Insert description here
// You can write your code in this editor


if(moves) {

var targetX = irandom_range(xstart - moveRange, xstart +moveRange)
var targetY = irandom_range(ystart - moveRange, ystart +moveRange)
var _tileX = to_tile(targetX) + 0.5;
var _tileY = to_tile(targetY) + 0.5;

move_to_point(to_room(_tileX), to_room(_tileY))


alarm[0] = irandom_range(minMoveTime, maxMoveTime)




}