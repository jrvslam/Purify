// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowMana(){
	
	for (var i = 5; i < global.full_w - 5; i += 2) {
		for (var j = 5; j < global.full_h - 5; j += 2) {
			//check if cell is pure
			var cell_val = ds_grid_get(global.globalGrid, i, j);
			var managrid_val = ds_grid_get(global.manaGrid, i, j);
			if (managrid_val != 0) {
				var is_still_pure = ds_grid_value_disk_exists(global.globalGrid, i, j, 6, -1);
				if (is_still_pure) { //land is no longer pure
					ds_grid_set(global.manaGrid, i, j, 0);
				} else {
					if (irandom(1) == 0) {
						if (managrid_val == 1) {
							instance_create_layer(i * CELL_SIZE, j * CELL_SIZE, "Instances", obj_mana);
						}
						ds_grid_add(global.manaGrid, i, j, -1);
						instance_create_layer(i * CELL_SIZE, j * CELL_SIZE, "Popup", oSparkle);
					}
				}
			} else if (cell_val == 1) { //is pure land
				//check if surrounding cells are pure
				var rand_rad_check = irandom_range(4, 5);
				var surrounding_min = ds_grid_get_disk_min(global.globalGrid, i, j, rand_rad_check);
				var managrid_surrounding = ds_grid_get_disk_max(global.manaGrid, i, j, 8);
				if (surrounding_min == 1 && managrid_surrounding == 0) {
					var totalMana = floor(instance_number(obj_mana) / 10);
					//surrounding cells are all pure and there are no other growing mana
					if (irandom(totalMana) == 0) { //chance of growing
						//pop mana first mana bottle
						instance_create_layer(i * CELL_SIZE, j * CELL_SIZE, "Instances", obj_mana);
						ds_grid_set(global.manaGrid, i, j, 5);
						instance_create_layer(i * CELL_SIZE, j * CELL_SIZE, "Popup", oSparkle);
					}
				}
			} 
		}
	}
					
}