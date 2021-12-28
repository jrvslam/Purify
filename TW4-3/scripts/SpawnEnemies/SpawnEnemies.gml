// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemies(noWaves, type1, type2, type3){
	var no_type_3_enemies = noWaves;
	var first_wave = true;
	repeat(no_type_3_enemies) {
		//var x_rand = spawn_location[i][1] + irandom_range((-1) * SPAWN_RADIUS, SPAWN_RADIUS);
		//var y_rand = spawn_location[i][2] + irandom_range((-1) * SPAWN_RADIUS, SPAWN_RADIUS);
		randomize();
		var x_rand = irandom_range(100, 300);
		var y_rand = irandom_range(100, 300);
		if (irandom(1) == 1) {
			x_rand = obj_char.x + (-1) * x_rand;
		} else { 
			x_rand = obj_char.x + x_rand;
		}
		
		
		
		if (irandom(1) == 1) {
			y_rand = obj_char.y + (-1) * y_rand;
		} else { 
			y_rand = obj_char.y + y_rand;
		}
		
		if (first_wave) {
			first_wave = false;
			x_rand = obj_char.x + irandom_range(-100, 100);
			y_rand = obj_char.y + irandom_range(-100, 100);
		}
		
		x_rand = clamp(x_rand, 50, global.full_w * CELL_SIZE - 50);
		y_rand = clamp(y_rand, 50, global.full_h * CELL_SIZE - 50);
		repeat(type3) {
			instance_create_layer(x_rand, y_rand, "Instances", obj_Summoner);
		}
		repeat(type2) {
			instance_create_layer(x_rand, y_rand, "Instances", obj_RangedEnemy);
		}
		repeat(type1) {
			instance_create_layer(x_rand, y_rand, "Instances", obj_enemy_a);
		}
				
		if (instance_number(obj_blessings) < 5) {
			x_rand = irandom_range(x_rand - 20, x_rand + 20);
			y_rand = irandom_range(y_rand - 20, y_rand + 20);
			x_rand = clamp(x_rand, 0, global.full_w * CELL_SIZE);
			y_rand = clamp(y_rand, 0, global.full_h * CELL_SIZE);
			instance_create_layer(x_rand, y_rand, "Instances", obj_blessings);
		}
	}
}