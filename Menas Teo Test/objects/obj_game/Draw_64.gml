/// @description Insert description here
// You can write your code in this editor


// drawing pause menu 
if(global.spause == true) {
    draw_set_color(c_black)
    draw_set_alpha(0.75)
    draw_rectangle(0,0, resW, resH, false)
    draw_set_alpha(1.0)
    draw_set_color(c_white)
    draw_set_font(PauseFont)
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text(resW * 0.5, resH * 0.1, "Goal: " + goaloptions[goalcurrentoption])
    draw_set_color(c_white)
    for(var i = 0; i < array_length(pauseoption); i++){
        var _print = "   "
        if(i == pauseOptionSelected)
        {
            _print += "> " + pauseoption[i] + " <"
        }
        else
        {
            _print += pauseoption[i]
            draw_set_alpha(0.7)
        }
        draw_text(resW * 0.5, resH * 0.5 + 18 + (i * 40), _print)
        draw_set_alpha(1.0)
    }
}

function pause_menu_color()
{
    switch (global.curworld)
    {
        case 0:
        draw_set_color(c_lime)
        break
        case 1:
        draw_set_color(c_yellow)
        break
    }


  /* if(global.curworld == 0)
    {
        //draw_set_color(c_lime)
    }
    if(global.curworld == 1)
    {
        draw_set_color(c_yellow)
    }*/

}
function pause_menu_goal()
{
    switch (global.curgoal)
    {
        case 0:
        draw_text(resW * 0.5, resH * 0.1, "Goal: Talk with your mom")
        break
        case 1:
        draw_text(resW * 0.5, resH * 0.1, "Goal: Explore the forest")
        break
        case 2:
        draw_text(resW * 0.5, resH * 0.1, "Goal: Explore the yellow kingdom")
        break
    }
}