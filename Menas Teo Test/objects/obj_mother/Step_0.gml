
if collision_circle(destX, destY, sprite_width/2, obj_void, 0,0){

destX =x
destY = y
show_debug_message("HELP HELP HELP")


}
else {

if distance_to_point(destX, destY) > 1{

mp_potential_step_object(destX, destY,spd, obj_void);
image_speed = 1
}
else{

destX = x
destY = y
}
}

if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
    dialogueText = "Hello son! Press Space to talk.";
}


if (playerInRange && keyboard_check_pressed(vk_space)) {
    // You can replace the following line with the actual dialogue you want
    show_message("Mother: " + " Goodmorning son!");

    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}
if (!place_meeting(x, y, obj_player) && playerInRange) {
    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}









