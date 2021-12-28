/// @description Insert description here
// You can write your code in this editor
if (animation_end()) {
	image_speed = 0;
}

if (image_speed == 0) {
	image_alpha -= 0.025;
	if (image_alpha <= 0) {
		obj_game.isWin = true;
		instance_destroy();
	}
}