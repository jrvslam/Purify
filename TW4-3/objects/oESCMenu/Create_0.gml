/// @description Insert description here
// You can write your code in this editor
//x = x+32;
instance_destroy(oBack);
instance_deactivate_all(true);

/*
instance_activate_object(obj_camera);
x = global.cameraX + (CAMERAWIDTH / 2);
y = global.cameraY + (CAMERAHEIGHT / 2);
instance_deactivate_object(obj_camera);
*/

instance_create_layer(x+14 - sprite_width/2 + 32,y,"Popup2",oResume);
instance_create_layer(x+70+14 - sprite_width/2 + 32,y,"Popup2",oInstructions);
instance_create_layer(x+140+14 - sprite_width/2 + 32,y,"Popup2",oRestart);
instance_create_layer(x+210+14 - sprite_width/2 + 32,y,"Popup2",oExit);

instance_activate_layer("Popup1");
instance_activate_layer("Popup2");



