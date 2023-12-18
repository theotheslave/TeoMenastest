///Customizable properties

//Input

confirm_key = vk_space; //button press to go to the next page
max_input_delay = 5;//how many frames to wait before we accept input
input_delay = max_input_delay;


//Position

margin = 16; //how much space the textbox gets from the edges
padding = 8; // how much space things inside the textbox get
width = display_get_gui_width() - margin * 2;
height = sprite_height; 

x = (display_get_gui_width() - width) / 2; // so it is centered
y = display_get_gui_height() - height - margin;

text_font = fnt_text;
text_color = c_black;
text_speed = 0.6;
text_x = padding;
text_y = padding; 
text_width = width - padding * 2;


///Private properties
//NO ALTERING HERE PLS

actions = [];
current_action = -1; //so it is not active when starting 

text = "";
text_progress = 0;
text_length = 0;

///Methods
//method is something defined inside an object. !!Generally you dont need to call them manually!!

//start a conversation
setTopic = function(topic){
	actions = global.topics[$ topic];
	current_action = -1;
	
	next();
}


// move to the next action, or close the textbox if out of actions
next = function(){
	current_action++;
	if (current_action >= array_length(actions)){
		instance_destroy();
	}
	else{
		actions[current_action].act(id);
	}
}


//set the text that should be typed out
setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}
