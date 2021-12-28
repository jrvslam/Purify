// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PercentageCounter() {
	counter = 0;
	counterDef = 0;
	for (var i = 0; i < global.full_w; i = i + 1) {
		for (var j = 0; j < global.full_h; j = j + 1) {
			var val = ds_grid_get(global.globalGrid, i, j);
			if (val > 0) {
				counter += 1;
			} else if (val < 0) {
				counterDef += 1;
			}
		}
	}
	
	global.curr_perc = counter / totalBy5Cells;
	global.curr_perc_def = counterDef / totalBy5Cells;
}