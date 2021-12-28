/// @description Insert description here
// You can write your code in this editor

/*
var a = instance_number(obj_under);
var w = 1024 / 16;
var w_squared = floor((w * w) * 0.1);
		
if (a > w_squared) {
	show_debug_message("more than 60%");
	show_message("more than 60!");
}
*/

if (global.curr_perc >= BOSS_SPAWN_PERC) {
	if (!global.isBossSpawned) {
		instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_Boss);
		var x_rand = irandom_range(40, global.full_w * CELL_SIZE);
		var y_rand = irandom_range(40, global.full_h * CELL_SIZE);
		SpawnEnemies(1, 1, 1, 1);
		global.isBossSpawned = true;
	}
}