/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_sprite_ext(sHealthbar_bg, 0, perc_x, perc_y, GUIscale, GUIscale, 0, c_white, 1);
draw_sprite_stretched(sPercentage_land, 0, perc_x, perc_y, global.curr_perc * perc_width * GUIscale, perc_height * GUIscale); 
draw_sprite_ext(sPercentage_land_defiled, 0, perc_x + 250*GUIscale, perc_y, 
(-1) * global.curr_perc_def * perc_width * GUIscale, 1 * GUIscale, 0, c_white, 1);
draw_sprite_ext(sHealthbar_border, 0, perc_x, perc_y, GUIscale, GUIscale, 0, c_white, 1);
draw_set_halign(fa_left);
draw_set_font(fnt_dmg);
draw_set_color(c_white);

draw_text(perc_x + 10, perc_y + 10, "Percentage Land");

if (global.curr_perc_def >= SELF_HURT_PERC) {
	draw_set_color(c_maroon);
	draw_sprite(sText_BorderBg, 0, (CAMERAWIDTH * DISPLAY_SCALE) / 2, (CAMERAHEIGHT * DISPLAY_SCALE) - 30);
	draw_text_ext((CAMERAWIDTH * DISPLAY_SCALE) / 2, (CAMERAHEIGHT * DISPLAY_SCALE) - 80,
	"The land is too defiled! You're getting hurt!", 15, 230);
}

draw_sprite(sProgress_marker, 0, perc_x + LEVEL_1_SPAWN * perc_width * GUIscale, perc_y);
draw_sprite(sProgress_marker, 0, perc_x + LEVEL_2_SPAWN * perc_width * GUIscale, perc_y);
draw_sprite(sProgress_marker, 0, perc_x + LEVEL_3_SPAWN * perc_width * GUIscale, perc_y);
draw_sprite(sProgress_marker_boss, 0, perc_x + BOSS_SPAWN_PERC * perc_width * GUIscale, perc_y);
