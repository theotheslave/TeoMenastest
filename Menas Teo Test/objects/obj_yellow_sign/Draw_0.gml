draw_self();
draw_set_font(font);
draw_set_color(c_black);

if (playerInRange) {
    draw_text(x - string_width(text) / 2, y - 20, text);
}  

