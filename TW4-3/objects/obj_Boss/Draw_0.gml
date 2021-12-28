/// @description Insert description here
// You can write your code in this editor
draw_self();

//Flash
if (flashAlpha > 0) {	
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, flashColor, flashAlpha);
		
	shader_reset();
}