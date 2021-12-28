// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnProjectile(){
	//EAST
	var inst1 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst1.direction = point_direction(x,y,x+1,y+1);
	inst1.image_angle = point_direction(x,y,x+1,y+1);
	
	var inst2 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst2.direction = point_direction(x,y,x+1,y-1);
	inst2.image_angle = point_direction(x,y,x+1,y-1);
	
	var inst3 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst3.direction = point_direction(x,y,x+1,y);
	inst3.image_angle = point_direction(x,y,x+1,y);
	
	var inst4 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst4.direction = point_direction(x,y,x,y+1);
	inst4.image_angle = point_direction(x,y,x,y+1);
	
	var inst5 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst5.direction = point_direction(x,y,x,y-1);
	inst5.image_angle = point_direction(x,y,x,y-1);
	
	var inst6 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst6.direction = point_direction(x,y,x-1,y-1);
	inst6.image_angle = point_direction(x,y,x-1,y-1);
	
	var inst7 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst7.direction = point_direction(x,y,x-1,y);
	inst7.image_angle = point_direction(x,y,x-1,y);
	
	var inst8 = instance_create_layer(x,y,"Instances",obj_Projectile);
	inst8.direction = point_direction(x,y,x-1,y+1);
	inst8.image_angle = point_direction(x,y,x-1,y+1);
	
}