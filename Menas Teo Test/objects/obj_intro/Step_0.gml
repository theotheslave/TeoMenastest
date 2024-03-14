camera_set_view_pos(view_camera[0], 640, ypos);
ypos = max(ypos - 0.3, 0);


l += 0.2;

print = string_copy(str, 1, l);

if (l> string_length(str)+30) && next < array_length(strings)-1 
{
    l = 0;
    next ++;
    if (next == array_length(strings) - 1) holdspace++;
}

str = strings[next];

if (keyboard_check_direct(vk_space))
{
holdspace++;
}

if (ypos < 200) {
	
	
	
	room_goto(room_begin)
	
	}








