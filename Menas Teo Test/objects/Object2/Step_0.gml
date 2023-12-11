if irandom(room_speed * 2) = 1{

var Range = 256; 
destX = x + irandom_range(-Range, Range)
destY = y + irandom_range(-Range, Range)
}

if destX < 0 {destX =0}
if destY < 0 {destY= 0}
if destX > room_width {destX = room_width}
if destY > room_height {destY = room_height}

if collision_circle(destX, destY, sprite_width/2, oBlock, 0,0){

destX =x
destY = y
show_debug_message("HELP HELP HELP")


}
else {

if distance_to_point(destX, destY) > 1{

mp_potential_step_object(destX, destY,spd, oBlock);
image_speed = 1
}
else{

destX = x
destY = y
}
}

if (place_meeting(x, y, obj_player) && !playerInRange) {
    playerInRange = true;
	dialogueText = "Hello there! Press Space to talk.";
}


if (playerInRange && keyboard_check_pressed(vk_space)) {
    // You can replace the following line with the actual dialogue you want
    show_message("NPC: " + "Greetings, traveler!");

    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}
if (!place_meeting(x, y, obj_player) && playerInRange) {
    // Reset dialogue variables
    dialogueText = "";
    playerInRange = false;
}