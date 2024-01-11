//the one function that you need to cal!!
//Creates a textbox and start a conversation.
// What topic the dialogue box should be
function startDialogue(topic) {
	if (instance_exists(obj_textbox))
	return;
	
	var inst = instance_create_depth(x, y, -999, obj_textbox);
	inst.setTopic(topic);
}

//this is for typing and everything
function type(x, y, text, progress, width) { 
	var draw_x = 0;
	var draw_y = 0;
	
	for (var i = 1; i <= progress; i++){ //i in this case is a temporarily value used to 
		//store the integrer value of the current position in the for loop (that only works in this loop)
		var char = string_char_at(text, i);
		
		//Handle normal line breaks
		if (char == "\n"){
			draw_x=0;
			draw_y+= string_height("A");
		}
		// If we're starting a new word, we can line break
		else if (char == " ") {
			draw_x += string_width(char);
			
			var word_width = 0;
			for (var ii = i + 1; ii <= string_length(text); ii++){
				var word_char = string_char_at(text, ii);
				
				//if we reached the end of the word, stop checking
				if (word_char == "\n" || word_char == " ")
				break;
				
				//if the current word extents past the width boundary,
				//then move it to the next line
				word_width += string_width(word_char);
				if (draw_x + word_width > width){
					draw_x = 0
					draw_y += string_height("A");
					break;
				}
			}
		}
		
		else {
			//draw the letter
			draw_text(x + draw_x, y + draw_y, char);
			draw_x += string_width(char);
		}
	}
}