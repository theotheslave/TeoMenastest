if(surface_exists(psurf))
        {
            surface_free(psurf)
        }
        if(buffer_exists(psurfbuffer)) 
        {
            buffer_delete(psurfbuffer)
        }