/// @description Insert description here
// You can write your code in this editor
repeat(3){
	rng_y = irandom_range(-150,150);
	rng_x = irandom_range(-150,150);
	if (instance_exists(obj_char)) {
		var inst = instance_create_layer(obj_char.x+rng_x,obj_char.y+rng_y,"Instances",obj_Bomb);
	}
}
alarm[1] = room_speed * proj_cd;