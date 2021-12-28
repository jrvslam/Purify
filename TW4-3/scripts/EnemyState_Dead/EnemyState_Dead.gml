// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Dead(){
	if (sprite_index != sEnemyDead) {
		sprite_index = sEnemyDead;
		image_index = 0;
		image_speed = 1;
		image_alpha = 1;
	}
	
	if (sprite_index = sEnemyDead && image_index >= image_number - 2) {
		isDead = true;
		image_speed = 0;
	}
}