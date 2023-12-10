right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_sprint = keyboard_check(vk_shift)


xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;

//different sprites, for which way they go

if yspeed == 0 {
	if xspeed > 0 {face = RIGHT};
	if xspeed < 0 {face = LEFT};
	}

if xspeed > 0 && face == LEFT {face = RIGHT};
if xspeed < 0 && face == RIGHT {face = LEFT};

if xspeed == 0 {
	if yspeed < 0 {face = UP};
	if yspeed > 0{face = DOWN};
	}
	
if yspeed > 0 && face == UP {face = DOWN};
if yspeed < 0 && face == DOWN {face = UP};
	
sprite_index = sprite[face];

//animate
if xspeed==0 && yspeed==0 {
	image_index = 3;
}



if place_meeting(x+xspeed,y+yspeed,obj_par_obstacle) ==true {
	xspeed = 0;
	yspeed = 0;
}

if place_meeting(x+xspeed,y+yspeed,obj_wolf) ==true {
	
	xspeed =0;
	yspeed =0;
	
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