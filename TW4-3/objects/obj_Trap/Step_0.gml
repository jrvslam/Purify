/// @description Insert description here
// You can write your code in this editor
image_alpha += 1/(1*60*hit_delay);

if (image_index > 7){
	_hits = instance_place(x, y, obj_char);
	
	if (_hits != noone && startAtt) {
		with (_hits) {
			PlayerHit(other.attackDmg);
			state = PLAYERSTATE.INJURED;
			isHurt = true;
		}
		startAtt = false;
		_hits = noone;
		
	}
	UpdateLand(x, y, -1, 1);
	instance_destroy();
	
	//if (image_alpha > 1.3) {
	//	instance_destroy();
	//	UpdateLand(x, y, -1);
	//}
}