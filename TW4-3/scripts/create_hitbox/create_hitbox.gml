// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_hitbox(x, y, creator, sprite, knockback, lifespan, dmg, xscale){
	var x_pos = x;
	var y_pos = y;
	
	var hitbox = instance_create_layer(x_pos, y_pos, "Instances", obj_enemy_att);
	hitbox.sprite_index = sprite;
	hitbox.creator = creator;
	hitbox.knockback = knockback;
	hitbox.alarm[0] = lifespan;
	hitbox.image_xscale = xscale;
	
	
}