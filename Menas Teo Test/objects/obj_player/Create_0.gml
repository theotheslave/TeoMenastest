/// @description Insert description here
// You can write your code in this editor

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;

movespd = 1