#macro TEXT new TextAction
//because we dont want to type out every single thing for a new TextAction
//we use a macro named TEXT. So now every time we write TEXT and then some text 
// it just workes the same as a new TextAction

function DialogueAction(){
	act = function() { }; //serves as a template for our other actions to build on thats why its empty
}


//Define new text to type out
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	act = function(textbox) {
		textbox.setText(text);
	}
}

