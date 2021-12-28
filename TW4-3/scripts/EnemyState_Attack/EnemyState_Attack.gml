// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack(){
	if (instance_exists(obj_char)) {
		objDir = point_direction(x, y, obj_char.x, obj_char.y);
		objDis = distance_to_object(obj_char);
		if (isAtt) {
		
			if (image_index < 1) {
				image_speed = 0.0;
				image_index = 0;
			}
		
			dir = round(point_direction(x, y, obj_char.x, obj_char.y) / 90) * 90;
			var inst1 = instance_create_layer(x, y - 7, "Attacks", obj_enemy_att);
			switch (dir) {
				case 0: 
					sprite_index = sEnemy_r; image_xscale = -1;
					inst1.image_xscale = -1; break;
				case 90: 
					sprite_index = sEnemy_u; image_xscale = 1;
					inst1.image_angle = 270; break;
				case 180: 
					sprite_index = sEnemy_r; image_xscale = 1;
					inst1.image_xscale = 1; break;
				case 270: 
					sprite_index = sEnemy_d; image_xscale = 1;
					inst1.image_angle = 90; break;
			}
		
			//set_state_sprite(sEnemy_Att_r, 0.6, 1);

			isAtt = false;
		} else if (++wait > enemyAttCd) {
			wait = 0;
			isAtt = true;
			if (objDis > enemyAggroRadius) {
				state = ENEMYSTATE.FREE;
			} else if (objDis > enemyAttRadius) {
				state = ENEMYSTATE.CHASE;
			}
		}
	}
	
	
}