// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHit(dmgAmount){
	var blocked = (1 - defBlock) * dmgAmount;
	hp -= blocked;
	
	audio_play_sound(sndDamage, 10, 0);
	isHurt = true;
	flashAlpha = 1;
}