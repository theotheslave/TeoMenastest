depth=-y
global.npchp = 10
//setting up sprites for facing 
sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;


face = DOWN

movespd = 3
origspd = 3

xspeed = 0
yspeed = 0

//player state control

state = 0;
	movementState = 0;
	slidingState = 1;
// data to do our player a certain things

	//state information
	movementControl = true; //how we get our xspd and yspd based on button inputs
	autoSpriteControl = true; //control the sprite swapping
	animate = true; //control the actual animation


global.hp = 2
global.cancontrol = true
global.freeplayer = 0
trapped = false

trapcounter = 0
centerYOffset = -5
centerY = y + centerYOffset

aimdir = point_direction(x , centerY, mouse_x, mouse_y)
shoot_key = mouse_check_button_pressed(mb_left) 

global.equippedbow = false
global.collectedbow = 0