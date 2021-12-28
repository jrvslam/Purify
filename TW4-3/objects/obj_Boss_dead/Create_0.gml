/// @description Insert description here
// You can write your code in this editor

image_xscale = 2;
image_yscale = 2;

if (instance_exists(obj_camera)) {
	obj_camera.bossDeadTransition = true;
	if (instance_exists(obj_char)) {
		var dist = point_distance(obj_char.x, obj_char.y, x, y);
		var angle = point_direction(obj_char.x, obj_char.y, x, y);
		obj_camera.charBossxDis = lengthdir_x(dist, angle) / 20;
		obj_camera.charBossyDis = lengthdir_y(dist, angle) / 20;
	}
	obj_camera.target = noone;
}