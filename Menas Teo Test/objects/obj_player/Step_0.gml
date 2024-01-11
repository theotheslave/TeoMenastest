#region Control Buttons

// These are the buttons used to control the player

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
shift_sprint = keyboard_check(vk_shift)

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

#region Ice Colliding/states
// get info for each state
#region Different states
	//movement state (full player control)
	if state == movementState
	{
		//set the qualities of the state
		movementControl = true;
		autoSpriteControl = true;
		animate = true;
	
		//state swapping
			if place_meeting (x,y, obj_ice) && (xspeed != 0 || yspeed != 0)
			{
				state = slidingState;
			}
	}
	
	//sliding state
	if state == slidingState
	{
		//set the qualities of the state
		movementControl = false;
		autoSpriteControl = false;
		animate = false;
		
		//state swapping 
			if !place_meeting(x,y, obj_ice) || (xspeed == 0 && yspeed == 0)
			{
				state = movementState;
			}
	}

#endregion


//get xspd and yspd based on buttons
if movementControl == true{
	xspeed = (right_key - left_key) * movespd;
	yspeed = (down_key - up_key) * movespd;
}



//set sprites
mask_index = sprite[DOWN]
if autoSpriteControl == true
{
	if yspeed == 0 
	{
		if xspeed > 0 {face=RIGHT};
		if xspeed < 0 {face=LEFT};
	}
	if xspeed > 0 && face == LEFT {face = RIGHT};
	if xspeed < 0 && face == RIGHT {face = LEFT};
	if xspeed == 0
	{
		if yspeed > 0 {face = DOWN};
		if yspeed < 0 {face = UP};
	}
	if yspeed > 0 && face == UP {face = DOWN};
	if yspeed < 0 && face == DOWN {face = UP};
	sprite_index = sprite[face];
}

//diagonal ice collisions
#region Diagonal ice collisions
	if xspeed != 0 && yspeed != 0
	{
		if place_meeting(x,y, obj_ice) {xspeed = 0;}
		if place_meeting(x,y,obj_ice) {yspeed = 0;}
		
	}

	if place_meeting(x + xspeed, y, obj_icewall)
	{
		var _pixelCheck = sign(xspeed); //sign gives a number based on our xspd, either a -1, 0 or 1
		while !place_meeting(x + _pixelCheck, y, obj_icewall) { x += _pixelCheck;}
		
		xspeed = 0;
	}
	x = xspeed + x;
	
	if place_meeting(x, y +yspeed, obj_icewall)
	{
		var _pixelCheck = sign(yspeed);
		while !place_meeting(x, y + _pixelCheck, obj_icewall) {	y += _pixelCheck;}
		
		yspeed = 0;
	}
	y = yspeed + y;
#endregion


//transition
if place_meeting(obj_player.x, obj_player.y, obj_icerestart)
{
	room_restart();		
}


//animate 
if animate == true
{
	image_speed = 1;
	if xspeed == 0 && yspeed == 0
	{
		image_index = 0;
	}
} else {
	image_speed = 0;
}

depth = -y

#endregion


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
