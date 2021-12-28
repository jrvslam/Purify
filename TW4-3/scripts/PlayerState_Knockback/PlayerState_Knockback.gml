// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Knockback(){
	if (sprite_index != sChar_rOuch && sprite_index != sChar_uOuch && sprite_index != sChar_dOuch) {
		
		
		switch (dir) {
			case 315:
			case 0:
			case 45:
				sprite_index = sChar_rOuch; image_xscale = 1 * charScale;
				break;
			case 90:
				sprite_index = sChar_uOuch; image_xscale = 1 * charScale;
				break;
			case 135:
			case 180:
			case 225:
				sprite_index = sChar_rOuch; image_xscale = -1 * charScale;
				break;
			case 270:
				sprite_index = sChar_dOuch; image_xscale = 1 * charScale;
				break;
		}
		
		image_index = -1;
		image_speed = att_image_spd;
		isKnockback = true;
		
	}
	x -= hspd * spd * 2;
	y -= vspd * spd * 2;
	
	if (++knockbackTimer > knockbackDur && isKnockback) {
		isKnockback = false;
		knockbackTimer = 0;
		sprite_index = lastSprite;
		state = PLAYERSTATE.FREE;
		image_speed = move_image_spd;
	}
}