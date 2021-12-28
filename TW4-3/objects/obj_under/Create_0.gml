/// @description Insert description here
// You can write your code in this editor

var x_pos = floor(x / CELL_SIZE);
var y_pos = floor(y / CELL_SIZE);

global.cell[x_pos, y_pos] = id;

//check neighbouring cells
var is_filled = true;
for (var i = -1; i <= 1; i++) {
	for (var j = -1; j <= 1; j++) {
		var can = true;
		if (x_pos == 0 && i == -1) {
			can = false;
		} else if (x_pos == global.full_w && i == 1) {
			can = false;
		}
				
		if (y_pos == 0 && j == -1) {
			can = false;
		} else if (y_pos == global.full_h && j == 1) {
			can = false;
		}
		
		if (can && global.cell[x_pos + i, y_pos + j] == noone) {
			is_filled = false;
		}
	}
}
if (irandom(1) == 1) sprite_index = spr_under2;
var rand_angle = irandom(3) * 90;
image_angle += rand_angle;


if (is_filled) {
	is_growable = false;
}

if (is_growable) {
	alarm[0] = 600;
}