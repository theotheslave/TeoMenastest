#region Control Buttons

// These are the buttons used to control the player

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
shift_sprint = keyboard_check(vk_shift)

#endregion

#region Movement

//Code to make the player move in ways
if(global.cancontrol){
xspeed = (right_key - left_key) * movespd;
yspeed = (down_key - up_key) * movespd;

x = xspeed + x;
y = yspeed + y;

if (shift_sprint)  {
	movespd = 5
}
else {
	movespd = origspd
}
}
if(!global.cancontrol){
	xspeed = 0
	yspeed = 0
}
#endregion

#region Sprite states

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
	
	sprite_index = spr_player_standingstill;
}

#endregion

#region Collisions

if place_meeting(x+xspeed, y+yspeed, obj_void) {
	xspeed = 0;
	yspeed = 0;
}

#endregion

if(place_meeting(x,y,obj_trap))
{
	trapped = true
	global.cancontrol = false
}
if (trapped && keyboard_check_pressed(ord("Q")))
{
	trapcounter++
}
if(trapcounter == 3)
{
	instance_destroy(Trap)
	trapcounter = 0
	global.cancontrol = true
	trapped = false
}


// player equip bow
if(global.equippedbow && keyboard_check_pressed(ord("Q")) && global.collectedbow > 0)
{
	global.equippedbow = false
	global.abilitytoshoot = false
	show_debug_message("unequipped")
}
if(!global.equippedbow && keyboard_check_pressed(ord("E")) && global.collectedbow > 0)
{
	global.equippedbow = true
	global.abilitytoshoot = true
	show_debug_message("equipped")
}

//shooting
if(mouse_check_button(mb_left) && global.equippedbow)
{
	var _arrowinst = instance_create_depth( x, centerY, depth-100, obj_arrow)
	with(_arrowinst)
	{
		drc = other.aimdir
	}
}



