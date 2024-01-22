/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_color(c_black);
// Draw dialogue text
if (playerCheck) {
    // You can adjust the position based on your game's layout
    draw_text(x - string_width(text) / 2, y - 30, text);
	draw_set_font (font);
}
