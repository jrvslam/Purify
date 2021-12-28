/// @description Insert description here
// You can write your code in this editor

keyUp = keyboard_check(vk_up);
keyLeft = keyboard_check(vk_left);
keyDown = keyboard_check(vk_down);
keyRight = keyboard_check(vk_right);
keyAttack = keyboard_check(vk_space);
keySpecial = keyboard_check(ord("Q"));
keyDefend = 0;
keyDodge = keyboard_check(ord("W"));
keyLaser = keyboard_check(ord("E"));

if (hp <= 0 && !instance_exists(obj_Boss_dead)) {
	instance_destroy();
	instance_create_layer(x, y, "Instances", obj_char_dead);
}

if (hp >= hpmax) {
	hp = hpmax;
}

if (isHurt) {
	instance_create_layer(x, y, "Popup2", obj_player_dmg_popup);
	isHurt = false;
}

//flash
if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

if (isSpecial && ++specCounter >= specialCd) {
	specCounter = 0;
	isSpecial = false;
}

if (isDodge && ++dodgeTimer > dodgeCooldown) {
	dodgeTimer = 0;
	isDodge = false;
}

if (!isAtt && ++attTimer > attCooldown) {
	attTimer = 0;
	isAtt = true;
}

if (isLaserCd && ++laserTimer > LaserCooldown) {
	laserTimer = 0;
	isLaserCd = false;
}

//Boosters
if (isSpdBoost && ++spdBstTimer > spdBstDur) {
	spdBstTimer = 0;
	isSpdBoost = false;
	
	wlkspd = 2.5;
	//dagspd = round(2 * ((sqrt(2) / 2)));
	dagspd = wlkspd;
}

if (isAttBoost) {
	if (attBstTimer % 50 == 0) {
		attBoost();
	}
	
	if (++attBstTimer > attBstDur) {
		attBstTimer = 0;
		isAttBoost = false;
	}
}

if (isRegenBst && ++regenBstTimer > regenBstDur) {
	regenBstTimer = 0;
	isRegenBst = false;
	
	regenRate = 1;
	defBlock = 0;
	char_spread_radius = 1;
}

if (isPopupCd && ++popupTimer > popupCd) {
	isPopupCd = false;
	popupTimer = 0;
}

if (hp < 0.5*hpmax) {
	if (!instance_exists(objLowHealth)) {
		instance_create_layer(x, y, "FrontAttacks", objLowHealth);
	}
}

switch (state) {
	case PLAYERSTATE.FREE: 
		PlayerState_Free();
		if (hspd != 0 || vspd != 0) {
			dir = point_direction(0, 0, hspd, vspd);
			
			switch(dir) {
				case 0: sprite_index = sChar_r; image_xscale = -1 * charScale; break;
				case 90: sprite_index = sChar_u; break;
				case 180: sprite_index = sChar_r; image_xscale = 1 * charScale; break;
				case 270: sprite_index = sChar_d; break;
			}
			lastSprite = sprite_index;
		} else {
			image_index = 0;
		}
		break; 
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Att(); break;
	case PLAYERSTATE.ATTACK_SPECIAL: PlayerState_Special(); break;
	case PLAYERSTATE.DEFEND: PlayerState_Defend(); break;
	case PLAYERSTATE.INJURED: PlayerState_Injured(); break;
	case PLAYERSTATE.DODGE: PlayerState_Dodge(); break;
	case PLAYERSTATE.KNOCKBACK: PlayerState_Knockback(); break;
	case PLAYERSTATE.ATTACK_LASER: PlayerState_Laser(); break;
}

UpdateLand(x, y, 1, char_spread_radius);