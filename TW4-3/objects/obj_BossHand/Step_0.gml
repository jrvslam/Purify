/// @description Insert description here
// You can write your code in this editor
/*
switch (state) {
	//case ENEMYSTATE.FREE: BossState_Free(); break;
	//case ENEMYSTATE.HIT: BossState_Hit(); break;
	//case ENEMYSTATE.DEAD: BossState_Dead(); break;
	//case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
	case ENEMYSTATE.ATTACK: HandState_Attack(); break;
}
*/
if (sprite_index == sBossHandAtt2) {
	
	if (image_index > 20) {
		if (startAtt) {
			_hits = instance_place(floor(x), floor(y), obj_char);
			if (_hits != noone) {
				with (_hits) {
					show_debug_message("HIT PLAYER");
					PlayerHit(other.attackDmg);
					state = PLAYERSTATE.INJURED;
					isHurt = true;
				}
				_hits = noone;
			}
			startAtt = false;
			UpdateLand(x - 5, y, -1, SPREAD_RADIUS + 2);
		}
		
		
		if (image_index > image_number - 1) {
			image_index = 28;
			if (--handUptime <= 0) {
				sprite_index = sBossHandRet;
			}
		}
	}
}

if (sprite_index == sBossHandRet) {
	if (animation_end()) {
		instance_destroy();
	}
}



