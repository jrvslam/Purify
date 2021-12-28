/// @description Insert description here
// You can write your code in this editor
if (image_alpha > 0) {
	image_alpha = image_alpha - 0.01;
}


if (image_alpha <= 0) {
	instance_destroy();
	draw_set_alpha(1);
}