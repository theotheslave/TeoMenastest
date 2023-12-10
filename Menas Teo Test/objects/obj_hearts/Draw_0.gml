/// changing heart depending on health
draw_self()
if(global.hp == 3)
{
	sprite_index = spr_heart
}
if(global.hp == 2)
{
	sprite_index = Sprite20
}
if(global.hp == 1)
{
	sprite_index = Sprite21
}
if(global.hp == 0)
{
	sprite_index = Sprite22
}
