/// @description Insert description here
// You can write your code in this editor
//image_alpha += 1/(delay*60);

if (image_index > image_number - 1){
	//Emit projectiles 8 dir
	image_index = image_number - 1;
	image_speed = 0;
	SpawnProjectile();
	UpdateLand(x, y, -1, SPREAD_RADIUS);
}

if (image_speed == 0) {
	image_alpha -= 0.05;
}

if (image_alpha <= 0) {
	instance_destroy();
}