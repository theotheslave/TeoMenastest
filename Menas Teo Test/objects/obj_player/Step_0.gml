right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
shift_sprint = keyboard_check(vk_shift)


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



if (keyboard_check_pressed(vk_space)) 
{
 var inst = instance_place(x, y, obj_NPCParent); // check for collision
 if (inst != noone) // if there is a collision, inst is set to the id of the collided instance
 {
  with (inst) 
  {
  // Create Event


// Add dialogue lines to the list
ds_list_add(dialogueData, "Hello, adventurer!");
ds_list_add(dialogueData, "Would you like to help me?");

// Show what characters say
if (dialogueData != -1) {
    draw_text(20, 20, ds_list_find_value(dialogueData, currentLine));
}

// When the player presses Space
if (keyboard_check_pressed(vk_space)) {
    currentLine += 1;
    
    // Check if the conversation is done
    if (currentLine >= ds_list_size(dialogueData)) {
        // End the talk or do something else
        ds_list_destroy(dialogueData);
        instance_destroy();
    }
	
}
  }
 }
}