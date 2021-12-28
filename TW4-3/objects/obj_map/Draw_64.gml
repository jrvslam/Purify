/// @description Insert description here
// You can write your code in this editor
var space = sprite_get_width(sMapN);
draw_set_alpha(0.5);
for (var yy = 0; yy < global.full_h; yy++) {
	for (var xx = 0; xx < global.full_w; xx++) {
		var val = ds_grid_get(global.globalGrid, xx, yy);
		if (val == 0) {
			draw_sprite(sMapN, 0, xx * space + 10, yy * space + 10);
		} else if (val < 0) {
			draw_sprite(sMapD, 0, xx * space + 10, yy * space + 10);
		} else if (val > 0) {
			draw_sprite(sMapP, 0, xx * space + 10, yy * space + 10);
		}
	}
}
if (instance_exists(obj_char)) {
	draw_sprite(sMapChar, 0, (obj_char.x / CELL_SIZE) * space + 10, (obj_char.y / CELL_SIZE) * space + 10);
}

if (instance_exists(pEnemy)) {
	with (pEnemy) {
		draw_sprite(sMapE, 0, (x / CELL_SIZE) * space + 10, (y / CELL_SIZE) * space + 10);
	}
}

if (instance_exists(obj_Boss)) {
	with (obj_Boss) {
		draw_sprite_ext(sMapB, 0, (x / CELL_SIZE) * space + 10, (y / CELL_SIZE) * space + 10, 0.25, 0.25, 0, c_white, 1);
	}
}
	
draw_set_alpha(1);

