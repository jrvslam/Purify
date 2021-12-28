// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Hit(){
	
	if (isHit) {
		//knockback?
		if (instance_exists(obj_char)) {
			dir = point_direction(x, y, obj_char.x, obj_char.y);
			xDis = lengthdir_x(enemyKnockback, dir);
			yDis = lengthdir_y(enemyKnockback, dir);
			var x1 = x -  xDis;
			var y1 = y -  yDis;
			x = x1;
			y = y1;
		}
		isHit = false;
	} else {
		
	
		if (++kb > kbDuration) {
			kb = 0;
			state = ENEMYSTATE.FREE;
		}
	}
}