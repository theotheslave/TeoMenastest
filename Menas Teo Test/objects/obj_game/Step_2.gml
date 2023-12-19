/// @description Insert description here
// You can write your code in this editor


/// picking option
if(global.spause)
{
    keyUp = keyboard_check_pressed(vk_up) ||  keyboard_check_pressed(ord("W"))
    keyDown = keyboard_check_pressed(vk_up) ||  keyboard_check_pressed(ord("S"))
    pauseOptionSelected += (keyDown - keyUp)
    if(pauseOptionSelected >= array_length(pauseoption)) pauseOptionSelected = 0
    if(pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseoption) -1
keyActivate = keyboard_check_pressed(vk_space)
if(keyActivate)
{
    switch (pauseOptionSelected)
    {
        case 0: //continue
        {
            global.spause = false
             instance_activate_all()
        if(surface_exists(psurf))
        {
            surface_free(psurf)
        }
        if(buffer_exists(psurfbuffer)) 
        {
            buffer_delete(psurfbuffer)
        }
        } break;
        case 1: //Main Menu
        {  global.spause = false
			room_goto(room_main_menu);
			/* if(surface_exists(psurf))
        {
            surface_free(psurf)
        }
        if(buffer_exists(psurfbuffer)) 
        {
            buffer_delete(psurfbuffer)
        }*/
        } break;
        case 2: //Quit
        {
            game_end()
        }break
    }
}
}