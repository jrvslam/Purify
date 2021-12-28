// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){
	
	//at dest or given up?
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed) {
		hspd = 0;
		vspd = 0;
		//end move animation
		if (image_index < 1) {
			image_speed = 0.0;
			image_index = 0;
		}
		
		//set new target dest
		if (++wait >= waitDuration) {
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45,45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	} else {
		timePassed++;
		image_speed = move_image_spd;
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		dir = point_direction(x, y, xTo, yTo);
		hspd = lengthdir_x(_speedThisFrame, dir);
		vspd = lengthdir_y(_speedThisFrame, dir);
			
		x += hspd * enemySpeed;
		y += vspd * enemySpeed;
		
		x = clamp(x, 9, room_width - 8);
		y = clamp(y, 17, room_height - 17);
	
	
		if (vspd != 0 && hspd != 0) {
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
	//set_state_sprite(sEnemy, 0.6, 0);

	
	if (distance_to_object(obj_char) < enemyAggroRadius) {
		state = ENEMYSTATE.CHASE;
	}
	
	/*
	if (move == 0) {
		if (x <= room_width - 5) x = x + 5;
	} else if (move == 1) {
		if (x >= 5) x = x - 5;
	} else if (move == 2) {
		if (y <= room_height - 5) y = y + 5;
	} else if (move == 3) {
		if (y >= 5) y = y -5;
	}
	*/
}