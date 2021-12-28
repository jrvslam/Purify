/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_char)) {
	var inst = instance_create_layer(obj_char.x,obj_char.y,"Instances",obj_BossHand);
}
show_debug_message("HAND SUMMONED");
alarm[0] = room_speed * slam_cd;