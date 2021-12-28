// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckDmgToEnemy(radius){
	var perc = 0;
	
	var x_cell = x / CELL_SIZE;
	var y_cell = y / CELL_SIZE;
	perc = ds_grid_get_disk_mean(global.globalGrid, x_cell, y_cell, radius);
	
	if (perc <= 0) perc = 0;
	
	return perc;
}