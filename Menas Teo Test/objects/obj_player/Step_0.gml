right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_sprint = keyboard_check(vk_shift)


xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;

if place_meeting(x+xspeed,y+yspeed,obj_wall) ==true {
	xspeed = 0
	yspeed = 0
}

if place_meeting(x+xspeed,y+yspeed,obj_enemy) ==true {
instance_destroy(obj_player)
}

x = xspeed + x;
y = yspeed + y;

if (shift_sprint)  {
	movespd = movespd + 3
	movespd = max(5,8)
}
else {
	movespd = 5
}