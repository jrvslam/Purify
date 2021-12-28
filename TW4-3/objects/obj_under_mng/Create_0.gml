/// @description Insert description here
// You can write your code in this editor

global.cell = 0;

global.full_w = room_width / CELL_SIZE;
global.full_h = room_height / CELL_SIZE;

for (var i = 0; i <= global.full_w; i++) {
	for (var j = 0; j <= global.full_h; j++) {
		global.cell[i, j] = noone;

	}
}

totalBy5Cells = (global.full_w ) * (global.full_h);
counter = 0;
counterDef = 0;
global.curr_perc = 0;
global.curr_perc_def = 0;

perc_width = 250;
perc_height = 18;

perc_x = (CAMERAWIDTH*2.5) - 270*GUIscale;
perc_y = (CAMERAHEIGHT*2.5) - 60;

global.isBossSpawned = false;
global.isWin = false;

spawn_location = [];
is_spawn_locations_active = false;
is_1st_wave_spawned = false;
is_2nd_wave_spawned = false;
is_3rd_wave_spawned = false;



global.globalGrid = ds_grid_create(global.full_w, global.full_h);
//global.defileGrid = ds_grid_create(global.full_w, global.full_h);
global.edgeGrid = ds_grid_create(global.full_w, global.full_h);
global.manaGrid = ds_grid_create(global.full_w, global.full_h);
alarm[5] = 500;
alarm[6] = 1000;
alarm[7] = 500;