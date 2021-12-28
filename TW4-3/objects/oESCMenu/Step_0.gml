/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape)){
	instance_destroy();
	instance_destroy(oExit);
	instance_destroy(oInstructions);
	instance_destroy(oRestart);
	instance_destroy(oResume);
	instance_destroy(oESCMenu);
	instance_create_layer(x, y, "Popup2", oPause);
	instance_activate_all();
}
