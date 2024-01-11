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

#region Collisions and Movement

if (array_length (move_and_collide(xspeed, 0, obj_collision_parent, 4, 0, 0, movespd, movespd)) > 0)
{
	xspeed = 0;
}

if (array_length (move_and_collide(0, yspeed, obj_collision_parent, 4, 0, 0, movespd, movespd)) > 0)
{
	yspeed = 0;
}

if (keyboard_check(vk_lshift)) 
{
	movespd = 5;
}
else
{
	movespd = origspd
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

// get info for each state
#region
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


