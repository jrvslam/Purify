// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Att(){	
	image_speed = 1;
	
	if (isAtt) {
		audio_play_sound(sndAtt, 10, 0);
		mana -= attManaCost;
		isAtt = false;
		
		
		switch (dir) {
			case 315:
			case 0:
			case 45:
				var inst1 = instance_create_layer(x, y, "Attacks", obj_char_attl);
				sprite_index = sChar_att_l; image_xscale = -1 * charScale;
				inst1.image_xscale = -1 * charScale;
				inst1.image_yscale = 1 * charScale;
				break;
			case 90:
				var inst1 = instance_create_layer(x, y, "Attacks", obj_char_attu);
				sprite_index = sChar_att_u; image_xscale = 1 * charScale;
				inst1.image_xscale = 1 * charScale;
				inst1.image_yscale = 1 * charScale;
				break;
			case 135:
			case 180:
			case 225:
				var inst1 = instance_create_layer(x, y, "Attacks", obj_char_attl);
				sprite_index = sChar_att_l; image_xscale = 1 * charScale;
				inst1.image_xscale = 1 * charScale;
				inst1.image_yscale = 1 * charScale;
				break;
			case 270:
				var inst1 = instance_create_layer(x, y, "FrontAttacks", obj_char_att);
				sprite_index = sChar_att_d; image_xscale = 1 * charScale;
				inst1.image_xscale = 1 * charScale;
				inst1.image_yscale = 1 * charScale;
				//inst1.image_angle = 270; 
				//inst1.offset = -10;
				break;
		}
	
		state = PLAYERSTATE.FREE;
	}
	
	/*
	//Start of the attack
	if (sprite_index != sAtt_r) {
		sprite_index = sAtt_r;
		image_index = 0;
		image_speed = att_image_spd;
		ds_list_clear(hitByAttack);
	} 
	
	if (sprite_index == sAtt_r) {
		//image_speed = att_image_spd;
		mask_index = sAtt_rHB;
		var hitByAttackNow = ds_list_create();
		var hits = 0;
		hits = instance_place_list(floor(x), floor(y), pEnemy, hitByAttackNow, false);
	
		if (hits > 0) {
			for (var i = 0; i < hits; i++) {
				var hitID = hitByAttackNow[| i];
				if (ds_list_find_index(hitByAttack, hitID) == -1) {
					ds_list_add(hitByAttack, hitID);
					with (hitID) {
						EnemyHit(2);
					}
				}
			}
		}
		ds_list_destroy(hitByAttackNow);
		mask_index = sCharMask;
	}

	if (animation_end()) {
		ds_list_clear(hitByAttack);
		sprite_index = init_sprite;
		image_speed = move_image_spd;
		state = PLAYERSTATE.FREE;
	}
	*/
}