<<<<<<< Updated upstream

/// Alpha blending
gpu_set_blendenable(false)
if(pause){
	surface_set_target(application_surface)
	if (surface_exists(psurf))
	{
		draw_surface(psurf,0,0)
	}
	else
	{
		psurf = surface_create(resW, resH)
		buffer_set_surface(psurfbuffer,psurf,0)
	}
	surface_reset_target()
}
	if(keyboard_check_pressed(vk_escape))
	{
if(!pause)
		{
			pause = true
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
	else
	{
		pause = false
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
	}








=======
/// Alpha blending pre-draw event
gpu_set_blendenable(false)
if(global.spause){
    surface_set_target(application_surface)
    if (surface_exists(psurf))
    {
        draw_surface(psurf,0,0)
    }
    else
    {
        psurf = surface_create(resW, resH)
        buffer_set_surface(psurfbuffer,psurf,0)
    }
    surface_reset_target()
}
    if(keyboard_check_pressed(vk_escape))
    {
if(!global.spause)
        {
            global.spause = true
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
    else
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
    }
    }
>>>>>>> Stashed changes








