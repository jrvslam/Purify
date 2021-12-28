// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Dodge(){
	//var init_sprite = sprite_index;
	defBlock = 0.9;
	//mask_index = sDefend;
	if(sprite_index != sChar_rDodge && sprite_index != sChar_uDodge && sprite_index != sChar_dDodge)
	{ 
		audio_play_sound(sndDodge, 10, 0);
		isDodge = true;
		
		x += dcos(dir) * 10;
		y -= dsin(dir) * 10;
		if (dir == 180 || dir == 135 || dir == 225) {
			sprite_index = sChar_rDodge;
			image_xscale = 1 * charScale;
		} else if (dir == 90) {
			sprite_index = sChar_uDodge;
			image_xscale = 1 * charScale;
		} else if (dir == 270) {
			sprite_index = sChar_dDodge;
			image_xscale = 1 * charScale;
		} else {
			sprite_index = sChar_rDodge;
			image_xscale = -1 * charScale;
		}
		image_index = 0;
		image_speed = 1;
		char_spread_radius = 0;
	}
	
	if (true) {
		
		show_debug_message(string(dir));
		x += dcos(dir) * 10;
		y -= dsin(dir) * 10;
		
		x = clamp(x, 9, room_width - 8);
		y = clamp(y, 17, room_height - 17);
	}
	
	if (animation_end()) {
		sprite_index = lastSprite;
		state = PLAYERSTATE.FREE;
		char_spread_radius = SPREAD_RADIUS;
	}
}