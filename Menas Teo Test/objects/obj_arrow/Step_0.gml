xspd = lengthdir_x(speed1, drc)
yspd = lengthdir_y(speed1, drc) 
x += xspd
y += yspd
if(global.destroyarrow) 
{
	instance_destroy()
}
if (point_distance(xstart, ystart, x,y) > maxDist)
{
	global.destroyarrow = true
}





