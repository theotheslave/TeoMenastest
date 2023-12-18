//damaging


if(collidedtrap == false){
image_speed = 0.3
sprite_index = Trap2
sprite_index = Trap3
sprite_index = Trap4
sprite_index = Trap5
sprite_index = Trap6
collidedtrap = true
}
if(collidedtrap == true){
	global.hp = global.hp
}
if (global.hp <= 0){
	room_restart()
}






