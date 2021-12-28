/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_dmg);
draw_set_color(c_maroon);
draw_set_alpha(image_alpha);
draw_text_ext(x, y + 12, string(obj_Enemy.curr_dmg * -1), 6, 32);

draw_set_alpha(1);