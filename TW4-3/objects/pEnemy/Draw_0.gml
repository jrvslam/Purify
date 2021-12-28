/// @description Insert description here
// You can write your code in this editor


//HP Bar
draw_sprite(sMiniHealthbar_bg, 0, hpbar_x, hpbar_y);
draw_sprite_stretched(sHealthbar_health, 0, hpbar_x, hpbar_y, (enemyHp/hpmax) * hpbar_width, hpbar_height); 
draw_sprite(sMiniHealthbar_border, 0, hpbar_x, hpbar_y,);

draw_self();

//Flash
if (flashAlpha > 0) {	
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, flashColor, flashAlpha);
		
	shader_reset();
}