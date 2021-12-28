// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Special(){
	var init_sprite = sprite_index;
	
	if (sprite_index != sSpecial) {
		audio_play_sound(sndSpec, 10, 0);
		mana -= specialManaCost;
		sprite_index = sSpecial;
		image_index = 0;
		image_speed = att_image_spd;
		isSpecial = true;
		//alarm[8] = 500;
		ds_grid_set_disk(global.globalGrid, x / CELL_SIZE, y / CELL_SIZE, 5, 1);
		instance_create_layer(x, y, "Instances", obj_special_att);
	}
	
	if (animation_end()) {
		image_speed = move_image_spd;
		sprite_index = init_sprite;
		state = PLAYERSTATE.FREE;
	}
}