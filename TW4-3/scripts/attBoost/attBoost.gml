// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attBoost(){
	if (!isAttBoost) {
		isAttBoost = true;
	}
	
	var inst1 = instance_create_layer(x, y - 30, "Instances", obj_charprojectile);
	inst1.direction = dir;
	inst1.image_angle = dir;
	
	var inst2 = instance_create_layer(x, y - 30, "Instances", obj_charprojectile);
	inst2.direction = dir - 10;
	inst2.image_angle = dir - 10;
	
	var inst3 = instance_create_layer(x, y - 30, "Instances", obj_charprojectile);
	inst3.direction = dir + 10;
	inst3.image_angle = dir + 10;
	
}