/// @description Healthbar

draw_sprite_ext(sHealthbar_bg, 0, healthbar_x, healthbar_y, GUIscale, GUIscale, 0, c_white, 1);
draw_sprite_stretched(sHealthbar_health, 0, healthbar_x, healthbar_y, (hp/hpmax) * healthbar_width * GUIscale, healthbar_height * GUIscale); 
draw_sprite_ext(sHealthbar_border, 0, healthbar_x, healthbar_y, GUIscale, GUIscale, 0, c_white, 1);
draw_set_halign(fa_left);
draw_text(healthbar_x + 10, healthbar_y + 5, string(hp) + "/" + string(hpmax));

//Mana
draw_sprite_ext(sHealthbar_bg, 0, healthbar_x, healthbar_y - 60, GUIscale, GUIscale, 0, c_white, 1);
draw_sprite_stretched(sManabar_mana, 0, healthbar_x, healthbar_y - 60, (mana/manaMax) * healthbar_width * GUIscale, healthbar_height * GUIscale); 
draw_sprite_ext(sHealthbar_border, 0, healthbar_x, healthbar_y - 60, GUIscale, GUIscale, 0, c_white, 1);
draw_set_halign(fa_left);
draw_text(healthbar_x + 10, healthbar_y - 55, string(mana) + "/" + string(manaMax));

//draw Special icon
if (isSpecial) {
	draw_sprite(sSpec_icon, 0, spec_x, spec_y);
	draw_sprite_ext(sCooldown, 0, spec_x, spec_y, 
	1, 1 - (specCounter/specialCd),
	0, c_white, 0.8);
} else {
	draw_sprite(sSpec_icon, 0, spec_x, spec_y);
}

//draw Dodge icon
if (isDodge) {
	draw_sprite(sDodge_icon, 0, spec_x + 74, spec_y);
	draw_sprite_ext(sCooldown, 0, spec_x + 74, spec_y, 
	1, 1 - (dodgeTimer/dodgeCooldown), 
	0, c_white, 0.8);
} else {
	draw_sprite(sDodge_icon, 0, spec_x + 74, spec_y);
}

/*
if (!position_meeting(mouse_x, mouse_y,sPause)){
	draw_sprite(sPause, 0, spec_x + 150, 150);
}else{
	draw_sprite_ext(sCooldown, 0, spec_x + 150, 150, 1, 1, 0, c_white, 0.8);
}
*/

//draw Defend icon
if (isLaserCd) {
	draw_sprite(sDef_icon, 0, spec_x + 148, spec_y);
	draw_sprite_ext(sCooldown, 0, spec_x + 148, spec_y,
	1, 1 - (laserTimer/LaserCooldown),
	0, c_white, 0.8);
} else {
	draw_sprite(sDef_icon, 0, spec_x + 148, spec_y);
}

if (isSpdBoost) {
	draw_sprite(sSpdBoost, 0, spec_x, spec_y - 74);
	draw_sprite_ext(sBoostCd, 0, spec_x, spec_y - 74,
	1, spdBstTimer/spdBstDur,
	0, c_white, 0.8);
}

if (isAttBoost) {
	draw_sprite(sAttBoost, 0, spec_x + 40, spec_y - 74);
	draw_sprite_ext(sBoostCd, 0, spec_x + 40, spec_y - 74,
	1, attBstTimer/attBstDur,
	0, c_white, 0.8);
}

if (isRegenBst) {
	draw_sprite(sRegenBoost, 0, spec_x + 80, spec_y - 74);
	draw_sprite_ext(sBoostCd, 0, spec_x + 80, spec_y - 74,
	1, regenBstTimer/regenBstDur,
	0, c_white, 0.8);
}