// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossState_Dead(){
	instance_create_layer(x, y, "Instances", obj_Boss_dead);
	instance_destroy();
}