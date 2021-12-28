// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrowLand(){
	for (var i = 0; i < global.full_w; i++) {
		for (var j = 0; j < global.full_h; j++) {
			var cell = ds_grid_get(global.edgeGrid, i, j);
			if (cell > 0) { //is an edge
				//check which type
				
				if (cell >= 1 && irandom(1) == 0) { //value is 1
					var glbCell = ds_grid_get(global.globalGrid, i, j);
					if (glbCell == 1) {
						ds_grid_set_disk(global.globalGrid, i, j, 1, 1); //spread around Pure
						ds_grid_set(global.edgeGrid, i, j, cell - 1);
						/*
						if (irandom(4) == 0) {
							instance_create_layer(i * CELL_SIZE, j * CELL_SIZE, "Instances", obj_mana);
						}
						*/
					} else if (glbCell == -1) {
						ds_grid_set_disk(global.globalGrid, i, j, 1, -1); //spread around Defile
						ds_grid_set(global.edgeGrid, i, j, cell - 1);
					}
				} else {
					ds_grid_set(global.edgeGrid, i, j, cell - 1);
				}
			}
		}
	}
}