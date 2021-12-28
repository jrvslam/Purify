/// @description Insert description here
// You can write your code in this editor


if (instance_exists(obj_char)) {
	x = obj_char.x;
	y = obj_char.y;

	switch(laserDir) {
		case 0: image_xscale = 1; break; 
		case 90: x = x + 20; image_angle = 90; break;
		case 180: image_xscale = -1; break;
		case 270: x = x - 20; y = y - 10; image_angle = 270; break;
	}
}

var _hitlist = ds_list_create();
var _hits = instance_place_list(x, y, pEnemy, _hitlist, false);
if (startAtt) {
	ds_list_clear(hitByAttack);
	startAtt = false;
}

if (animation_end()) {
	image_index = 6;
}

if (_hits > 0) {
	for (var i = 0; i < _hits; i++) {
		var hitID = _hitlist[| i];
		if (ds_list_find_index(hitByAttack, hitID) == -1) {
			ds_list_add(hitByAttack, hitID);
			with (hitID) {
				EnemyHit(other.attackDmg);
			}
		}
	}
}

ds_list_destroy(_hitlist);