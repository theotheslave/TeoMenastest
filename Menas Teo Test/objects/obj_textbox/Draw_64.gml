//draw the box
draw_sprite_stretched(sprite_index, 0, x, y, width, height);

//text
draw_set_halign(fa_left); //horizontal
draw_set_valign(fa_top); //vertica;
draw_set_font(text_font)
draw_set_color(text_color);
type(x + text_x, y + text_y, text, text_progress, text_width);
