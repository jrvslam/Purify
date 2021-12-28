// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateLand(x_update, y_update, value, radius){
	
	var x_val = round(x_update / CELL_SIZE);
	var y_val = round(y_update / CELL_SIZE);
	ds_grid_set_disk(global.globalGrid, x_val, y_val, radius, value);
	/*
	if (ds_grid_get_disk_min(global.globalGrid, x_update, y_update, 1) == 0) {
		ds_grid_set(global.edgeGrid, x_update, y_update, irandom_range(1, 5));
	}
	
	for (var a = -2; a <= 2; a++) {
		for (var b = -2; b <= 2; b++) {
			var x_val = x_update + a;
			var y_val = y_update + b;
			if (x_val >= 0 && x_val <= global.full_w && y_val >= 0 && y_val <= global.full_h) {
				if (ds_grid_get_disk_min(global.globalGrid, x_val, y_val, 1) == 0) {
					ds_grid_set(global.edgeGrid, x_val, y_val, irandom_range(1, 5));
				}
			}
		}
	}
	*/
		//draw_sprite_ext(spr_under, -1, x_update * global.full_w, y_update * global.full_h, 1, 1, 1, c_white, 1);
}