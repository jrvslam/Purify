// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(dmg){
	var _damage = dmg;
	
	audio_play_sound(sndEnemyHit, 10, 0);
	enemyHp -= _damage;
	flashAlpha = 1;
	var inst1 = instance_create_layer(x, y, "Popup", obj_dmg_popup);
	inst1.dmg = dmg;
	isHit = true;
	state = ENEMYSTATE.HIT;

}