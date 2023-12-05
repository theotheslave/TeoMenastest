 var inst = instance_place(x, y, obj_player); // check for collision
 if (inst != noone) // if there is a collision, inst is set to the id of the collided instance
 {
  
 draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(-1);

draw_text_color(obj_NPCBob.x,obj_NPCBob.y,  "Press Space To Interact", c_black, c_black,c_black,c_black, 1);
  }
 



