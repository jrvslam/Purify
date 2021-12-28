// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack_Summoner(){
	
	if (sprite_index != sSummoner_att) {
		sprite_index = sSummoner_att;
		image_speed = 1.5;
		image_alpha = 1;
	}
		
	enemyAttTimer += 0.05;
	if (enemyAttTimer > enemyAttCd){
		//Cast Trap
		enemyAttTimer = 0;
		if (instance_exists(obj_char)) {
			var inst = instance_create_layer(obj_char.x,obj_char.y,"Instances",obj_Trap);
		}
	}
	
	if (animation_end()) {
		state = ENEMYSTATE.FREE;
	}
}