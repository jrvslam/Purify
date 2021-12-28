// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawMana(){
	for (var i = 0; i < global.full_w; i++) {
		for (var j = 0; j < global.full_h; j++) {
			var cell_val = ds_grid_get(global.manaGrid, i, j);
			if (cell_val > 0) {
				draw_sprite(sGrowMana, 5 - cell_val, i * CELL_SIZE, j * CELL_SIZE);
			}
		}
	}
}