// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEdges(){
	for (var i = 0; i < global.full_w; i ++) {
		for (var j = 0; j < global.full_h; j++) {
			var cellVal = ds_grid_get(global.globalGrid, i, j);
			var valEdgeVal = ds_grid_get(global.edgeGrid, i, j);
			if (cellVal != 0) {
				var surroundingCells = ds_grid_value_disk_exists(global.globalGrid, i, j, 1, 0);
				if (!surroundingCells) { //all filled
					if (valEdgeVal != 0) {
						ds_grid_set(global.edgeGrid, i, j, 0);
					} 
				} else { //is edge
					if (valEdgeVal == 0) {
						ds_grid_set(global.edgeGrid, i, j, irandom_range(2, 4));
					}
				}
			}
			/*
			//compare to global grid
			var cellVal = ds_grid_get(global.globalGrid, i, j);
			var valEdgeGrid = ds_grid_get(global.edgeGrid, i, j);
			if (cellVal >= 1) {
				//For Pure Land Edges
				var emptyCell = ds_grid_value_disk_exists(global.globalGrid, i, j, 1, 0);
				
				if (!emptyCell) { //all surrounding is filled
					if (valEdgeGrid > 0) {
						ds_grid_set(global.edgeGrid, i, j, 0);
					} 
				} else { //is an edge
					if (valEdgeGrid == 0) {
						ds_grid_set(global.edgeGrid, i, j, irandom_range(1, 3));
					}
				}
			} else if (cellVal = -1) {
				//For Defiled Land Edges
				var surroundingCells = ds_grid_get_disk_max(global.globalGrid, i, j, 1);
				
				if (surroundingCells == -1) { //not defile edge
					if (valEdgeGrid > 0) {
						ds_grid_set(global.edgeGrid, i, j, 0);
					}
				} else { // defile edge
					if (valEdgeGrid == 0) {
						ds_grid_set(global.edgeGrid, i, j, irandom_range(4, 8));
					}
				}
			}
			*/
			/*
			var valGlobalGrid = ds_grid_get_disk_min(global.globalGrid, i, j, 1);
			if (valGlobalGrid == 1) { //all surrounding is filled
				var valEdgeGrid = ds_grid_get(global.edgeGrid, i, j);
				if (valEdgeGrid > 0) {
					ds_grid_set(global.edgeGrid, i, j, 0);
				} 
			} else { 
				var valCell = ds_grid_get(global.globalGrid, i, j);
				if (valCell == 1) { //is edge
					ds_grid_set(global.edgeGrid, i, j, irandom_range(1, 5));
				}
			}
			*/
		}
	}
}