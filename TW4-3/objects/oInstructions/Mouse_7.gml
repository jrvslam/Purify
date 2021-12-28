/// @description Insert description here
// You can write your code in this editor
instance_destroy(oExit);
instance_destroy(oInstructions);
instance_destroy(oRestart);
instance_destroy(oResume);
instance_destroy(oESCMenu);
instance_destroy(oPause);
instance_create_layer(global.cameraX + (CAMERAWIDTH / 2), global.cameraY + (CAMERAHEIGHT / 2),"Popup1",oInstruction);