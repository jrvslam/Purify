// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RenderArea(value, sprite) {

var img0 = 0;
var img1 = 0;
var img2 = 0;
var img3 = 0;

cell_x1 = max(floor((global.cameraX) / CELL_SIZE) - 2, 0);
cell_x2 = min(floor((global.cameraX + CAMERAWIDTH) / CELL_SIZE) + 2, global.full_w - 1);
cell_y1 = max(ceil((global.cameraY) / CELL_SIZE) - 2, 0);
cell_y2 = min(floor((global.cameraY + CAMERAWIDTH) / CELL_SIZE) + 2, global.full_h - 1);

for (var j = cell_y1; j < cell_y2; j++) {
	for (var i = cell_x1; i < cell_x2; i++) {
		if (i == 0) {
			img0 = ds_grid_get(global.globalGrid, i, j);
			img0 = img0 > 1 ? 1 : img0;
			img3 = ds_grid_get(global.globalGrid, i, j + 1);
			img3 = img3 > 1 ? 1 : img3;
		} else {
			img0 = img1;
			img3 = img2;
		}
		img2 = ds_grid_get(global.globalGrid, i + 1, j + 1);
		img2 = img2 > 1 ? 1 : img2;
		img1 = ds_grid_get(global.globalGrid, i + 1, j);
		img1 = img1 > 1 ? 1 : img1;
		
		var index = ((img0==value) * 8) + ((img1==value) * 4) + ((img2==value) * 2) + ((img3==value) * 1);
		if (index > 0) {
			draw_sprite_ext(sprite, index, i * 16, j * 16, 1, 1, 0, c_white, 1);
		}
	}
}
}