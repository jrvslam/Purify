/// @description Insert description here
// You can write your code in this editor
if (spdBstTimer != 0) {
	draw_sprite(sBlessed, -1, x, y);
}

if (attBstTimer != 0) {
	draw_sprite(sBlessedAtt, -1, x, y - 20);
}

if (regenBstTimer != 0) {
	draw_sprite(sBlessedRegen, -1, x, y);
}

draw_self();

if (flashAlpha > 0) {	
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, flashColor, flashAlpha);
		
	shader_reset();
}

if (attTimer != 0) {
	draw_sprite(sAttCD_bg, 0, x - 8, y + 3);
	draw_sprite_stretched(sAttCD, 0, x - 8, y + 3, (attTimer / attCooldown) * 16, 3);
}



