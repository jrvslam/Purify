// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HandState_Attack(){
	if (sprite_index != sBossHand_Slam) {
		sprite_index = sBossHand_Slam;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	mask_index = sBossHand_SlamHB;
	var hitByAttackNow = ds_list_create();
	var hits = 0;
	hits = instance_place_list(floor(x), floor(y), obj_char, hitByAttackNow, false);
	
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					TakeDamage(20);
					
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sBossHand;
	
	if (animation_end()) {
		mask_index = sBossHand;
		instance_destroy();
	}
}