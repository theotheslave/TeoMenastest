/// @description Insert description here
// You can write your code in this editor
global.curworld = 0
global.curgoal = 0

global.spause = false
resW = 1920
resH = 1080
pauseoption = ["Continue", "Main menu", "Exit"]
pauseOptionSelected = 0
paused_surf = -1
psurf = (surface_create(resW,resH)) //pause surface
psurfbuffer = -1
goaloptions = ["Explore the forest", "Find the castle", "Get the yellow crystal"]
goalcurrentoption = 0
space = ""
buttonPuzzle1();
