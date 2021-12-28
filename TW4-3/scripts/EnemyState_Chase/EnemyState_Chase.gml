// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Chase(){
	set_state_sprite(sEnemy_r, 0.4, 0);
	
	if (++aggroCheck > aggroCheckDuration) {
		state = ENEMYSTATE.FREE;
	}
	
	if (instance_exists(obj_char)) {
		var dis = distance_to_object(obj_char);
		var pDir = point_direction(x, y, obj_char.x, obj_char.y);
		var xDis = lengthdir_x(dis, pDir);
		var yDis = lengthdir_y(dis, pDir);

		if (dis <= enemyAttRadius) {
			isAtt = true;
			state = ENEMYSTATE.ATTACK;
		} else {
			hspd = wlkspd * sign(xDis);
	

			vspd = wlkspd * sign(yDis);
	
			x += hspd * enemySpeed;
			y += vspd * enemySpeed;
			x = clamp(x, 0, room_width - sprite_width);
			y = clamp(y, 0, room_height - sprite_height);
	
			if (yDis == xDis) {
				enemySpeed = dagspd;
			} else {
				enemySpeed = wlkspd;
			}
	
		}
	
		if (hspd != 0 || vspd != 0) {
			dir = floor(point_direction(0, 0, hspd, vspd) / 90) * 90;
			switch(dir) {
				case 0: sprite_index = sEnemy_r; image_xscale = -1; break;
				case 90: sprite_index = sEnemy_u; image_xscale = 1; break;
				case 180: sprite_index = sEnemy_r; image_xscale = 1; break;
				case 270: sprite_index = sEnemy_d; image_xscale = 1; break;
			}
		} else {
			image_index = 0;
		}
	}
	
}