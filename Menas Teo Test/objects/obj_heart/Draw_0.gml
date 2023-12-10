//sprite changing
draw_self()
if(global.hp <= 3 && global.hp > 2)
{
	sprite_index = spr_hearts1
}
if(global.hp <= 2 && global.hp > 1)
{
	sprite_index = spr_hearts2
}
if(global.hp <= 1 && global.hp > 0)
{
	sprite_index = spr_hearts3
}
if(global.hp <= 0)
{
	sprite_index = spr_hearts4
}

