// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossState_Hit(){
	if (sprite_index != sBossHead_hit) {
		sprite_index =sBossHead_hit;
		image_index = 0;
	}
	
	if (animation_end()) {
		sprite_index = sBossHead;
		state = ENEMYSTATE.FREE;
	}
}