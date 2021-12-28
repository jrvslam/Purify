// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attack_Ranged(){
	if (aggro == true) {
		image_alpha -= 1 / (teleport_delay * 60);
	}
	
	if (image_alpha < 0) {
			var rng_x = random_range(-250,250);
			var rng_y = random_range(-250,250);
			
			if (instance_exists(obj_char)) {
				x = obj_char.x + rng_x;
				x = clamp(x, 25, room_width - 25);
				y = obj_char.y + rng_y;
				y = clamp(y, 25, room_height - 25);
				image_alpha = 1;
				image_index = 0;
	
				var inst1 = instance_create_layer(x,y,"Instances",obj_Projectile2);
				inst1.direction = point_direction(x,y,obj_char.x,obj_char.y);
				inst1.image_angle = point_direction(x,y,obj_char.x,obj_char.y);
	
				var inst2 = instance_create_layer(x,y,"Instances",obj_Projectile2);
				inst2.direction = point_direction(x,y,obj_char.x,obj_char.y) - 45;
				inst2.image_angle = point_direction(x,y,obj_char.x,obj_char.y) - 45;
	
				var inst3 = instance_create_layer(x,y,"Instances",obj_Projectile2);
				inst3.direction = point_direction(x,y,obj_char.x,obj_char.y) + 45;
				inst3.image_angle = point_direction(x,y,obj_char.x,obj_char.y) + 45;
			
				UpdateLand(x, y, -1, 2);
			}
	}
}