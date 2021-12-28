/// @description Spawn Enemies

//if spawn_location are all cleared
//generate new spawn locations
if (!is_spawn_locations_active) {
	for (var i = 0; i < 5; i++) {
		//x-coordinate between grid indices
		var x_spawn = irandom(global.full_w) * CELL_SIZE;
		var y_spawn = irandom(global.full_h) * CELL_SIZE;
		spawn_location[i][0] = true;
		spawn_location[i][1] = x_spawn;
		spawn_location[i][2] = y_spawn;
	}
} 

//check spawn_location if they are active spawning

for (var i = 0; i < 5; i++) {
	if (spawn_location[i][0] == true) {
		is_spawn_locations_active = true;
	}
	
	if (is_spawn_locations_active) {
		break;
	}
}


//spawn the enemies at the spawn_location
if (is_spawn_locations_active) {
	for (var i = 0; i < 5; i++) {
		if (global.curr_perc >= LEVEL_1_SPAWN && !is_1st_wave_spawned) {
			is_1st_wave_spawned = true;
			//var no_type_1_enemies = irandom_range(1, 3); //for constant spawning
			SpawnEnemies(4, 1, 0, 0);
			/*
			instance_create_layer(room_width / 2, room_height / 2, "Instances_2", oCrack);
			oCrack.image_speed = 0;
			oCrack.image_index = 0;
			oCrack.image_alpha = 0.5;
			oCrack.image_xscale = 2;
			oCrack.image_yscale = 2;
			*/
		}
		
		if (global.curr_perc >= LEVEL_2_SPAWN && !is_2nd_wave_spawned) {
			is_2nd_wave_spawned = true;
			//var no_type_2_enemies = irandom_range(1, 3);
			SpawnEnemies(2, 1, 1, 0);
			//oCrack.image_index = 1;
		}
		
		if (global.curr_perc >= LEVEL_3_SPAWN && !is_3rd_wave_spawned) {
			is_3rd_wave_spawned = true;
			//var no_type_3_enemies = irandom_range(1, 2);
			SpawnEnemies(2, 1, 1, 1);
			//oCrack.image_index = 2;
		}
	}
}

alarm_set(7, 500);

	