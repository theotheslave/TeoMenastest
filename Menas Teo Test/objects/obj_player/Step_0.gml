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

if place_meeting(x+xspeed, y+yspeed, [obj_par_obstacle, obj_wolf]) ==true {
	xspeed = 0;
	yspeed = 0;
}

#endregion

#region Dialogue

if place_meeting (x, y, [obj_guards, obj_npc_main]) && global.inDialogue {
	
	movespd = 0;
	
}

#endregion

