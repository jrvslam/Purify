/// @description Insert description here
// You can write your code in this editor
draw_sprite(sBossHp_bg, 0, bossHpBar_x, bossHpBar_y,);
draw_sprite_stretched_ext(sHealthbar_health, 0, bossHpBar_x, bossHpBar_y, (enemyHp/hpmax) * bossHpBar_width, bossHpBar_height, c_white, 1); 
draw_sprite(sBossHp_border, 0, bossHpBar_x, bossHpBar_y,);
draw_set_color(c_maroon);
draw_set_halign(fa_center);
draw_text_ext((CAMERAWIDTH * DISPLAY_SCALE) / 2, bossHpBar_y + 30,
	"The Defiler", 15, 230);
if (dmg != 0) {
	var c = c_red;
	draw_text_transformed_color(bossHpBar_x + 20, bossHpBar_y + 40,
	string((-1) * dmg), 2, 2, 0, c, c, c, c, 1);
	
}

draw_set_color(c_white);
draw_sprite(sText_BorderBg, 0, (CAMERAWIDTH * DISPLAY_SCALE) / 2, bossHpBar_y + 120);
if (obj_Boss.enemyHp >= 0.9 * obj_Boss.hpmax) {
	draw_text_ext((CAMERAWIDTH * DISPLAY_SCALE) / 2, bossHpBar_y + 70,
	"That is the Defiler! Stop him! ", 15, 200);
} else {
	draw_set_color(c_white);
	draw_text_ext((CAMERAWIDTH * DISPLAY_SCALE) / 2, bossHpBar_y + 70,
	"Your land is hurting him! Keep Purifying!", 15, 230);
}