depth=-y
global.npchp = 10
//setting up sprites for facing 
sprite[RIGHT] = basic_sprite_mc_right_Sheet_bw;
sprite[UP] = basic_sprite_mc_up_Sheet_bw;
sprite[LEFT] = basic_sprite_mc_left_Sheet_bw;
sprite[DOWN] = mc_animation_down_Sheet_bw;


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


global.collectedletter = false
global.collectedbook = false
global.cansprint = true