/// @description Insert description here
// You can write your code in this editor

if (is_growable) {
	var x_pos = floor(x / global.cell_size);
	var y_pos = floor(y / global.cell_size);
	
	if (1 == 1) {
		var arr = [];
		var counter = 1;
		var can = true;
		var k = 0;
		repeat(9) {
			arr[k][0] = 0;
			arr[k][1] = 0;
			k++;
		}
		
		for (var i = -1; i <= 1; i++) {
			for (var j = -1; j <= 1; j++) {
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
				
 				if (can) {
					if (global.cell[x_pos + i, y_pos + j] == noone) {
						arr[counter][0] = x_pos + i;
						arr[counter][1] = y_pos + j;
						counter++;
					}
				}
				can = true;
			}
		}
		var index = 0;
		if (counter != 0) {
			index = irandom_range(1, counter) - 1;
		}
		
		
		if (irandom(counter + 1) / 9 <= 3 / 9) {
			instance_create_layer(arr[index][0] * global.cell_size, arr[index][1] * global.cell_size, "Land", obj_under);
		}
		
		
		
		if (array_length(arr) == 1) {
			is_growable = false;
		}
	}
	alarm_set(0, 1000);
}

