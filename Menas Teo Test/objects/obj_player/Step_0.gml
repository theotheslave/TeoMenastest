right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_sprint = keyboard_check(vk_shift)


xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;

x = xspeed + x;
y = yspeed + y;

if (shift_sprint)  {
	movespd = movespd + 3
	movespd = max(5,8)
}
else {
	movespd = 5
}



if (keyboard_check_pressed(vk_space)) 
{
 var inst = instance_place(x, y, Object2); // check for collision
 if (inst != noone) // if there is a collision, inst is set to the id of the collided instance
 {
  with (inst) 
  {
 instance_destroy();
  }
 }
}