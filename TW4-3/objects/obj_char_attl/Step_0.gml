/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_char)) {
	x = obj_char.x;
	y = obj_char.y;
}

var _hitlist = ds_list_create();
var _hits = instance_place_list(x, y, pEnemy, _hitlist, false);
if (startAtt) {
	ds_list_clear(hitByAttack);
	startAtt = false;
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