// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Laser(){
	
	if (isLaser && isLaserCd) {
		state = PLAYERSTATE.FREE;
	} else if (isLaser) {
		mana -= laserManaCost;
		//alarm[0] = room_speed * LaserCooldown;
		isLaser = false;

		/*
		hspd = keyRight - keyLeft;
		vspd = keyDown - keyUp;
		image_speed = move_image_spd;
	
		x += hspd * spd;
		y += vspd * spd;
	
		x = clamp(x, 9, room_width - 8);
		y = clamp(y, 17, room_height - 17);
	
		if (vspd != 0 && hspd != 0) {
			spd = dagspd;
		} else {
			spd = wlkspd;
		}
	
		defBlock = 0;
		
		dir = point_direction(0, 0, hspd, vspd);
		*/
	
		if (image_index < 1) {
			image_speed = 0.0;
			image_index = 0;
		}

		var instLaser = instance_create_layer(x, y - 7, "Attacks", obj_char_laser);
		/*
		switch(sprite_index) {
			case sChar_r: 
				if (dir < 90 || dir > 270) {
					instLaser.image_xscale = 1;
				} else {
					instLaser.image_xscale = -1;
				} 
				break;
			case sChar_u: instLaser.x = instLaser.x; instLaser.image_angle = 90; break; 
			case sChar_d: instLaser.x = instLaser.x; instLaser.y = instLaser.y - 10; instLaser.image_angle = 270; break;
		}
		*/
		
		if (sprite_index == sChar_r && image_xscale <= 0) {
			instLaser.laserDir = 0;
		} else if (sprite_index == sChar_r && image_xscale >= 0) {
			instLaser.laserDir = 180;
		} else if (sprite_index == sChar_u) {
			instLaser.laserDir = 90;
		} else if (sprite_index == sChar_d) {
			instLaser.laserDir = 270;
		}
		/*
		instLaser.image_angle = dir;
		switch (dir) {
			case 0:
				sprite_index = sChar_r; image_xscale = 1;
				break;
			case 90:
				sprite_index = sChar_u; image_xscale = 1;
				break;
			case 180:
				sprite_index = sChar_r; image_xscale = -1;
				break;
			case 270:
				sprite_index = sChar_d; image_xscale = 1;
				break;
		}
		*/
	}
	
	hspd = keyRight - keyLeft;
	vspd = keyDown - keyUp;
	image_speed = move_image_spd;
	
	x += hspd * spd;
	y += vspd * spd;
	
	x = clamp(x, 9, room_width - 8);
	y = clamp(y, 17, room_height - 17);
	
	if (vspd != 0 && hspd != 0) {
		spd = dagspd;
	} else {
		spd = wlkspd;
	}
	
}