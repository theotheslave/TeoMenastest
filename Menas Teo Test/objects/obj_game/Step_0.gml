/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_escape)
    {
    global.spause = !global.spause;
    if global.spause == false
        {
        instance_activate_all()
        if(surface_exists(psurf))
        {
            surface_free(psurf)
        }
        if(buffer_exists(psurfbuffer)) 
        {
            buffer_delete(psurfbuffer)
        }
        }
		if global.spause == true
    {
     instance_deactivate_all(true)
        psurf = surface_create(resW,resH)
        surface_set_target(psurf)
        draw_surface(application_surface,0,0)
        surface_reset_target()
        if (buffer_exists(psurfbuffer)){
            buffer_delete(psurfbuffer)
        }
        psurfbuffer = buffer_create(resW * resH * 4, buffer_fixed,1)
        buffer_get_surface(psurfbuffer,psurf,0)
    }
    }
	
	