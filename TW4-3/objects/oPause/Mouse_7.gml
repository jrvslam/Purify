/// @description Insert description here
// You can write your code in this editor
var inst = 0
if (instance_number(oESCMenu) == 0){
				
	inst = instance_create_layer(global.cameraX + (CAMERAWIDTH / 2), global.cameraY + (CAMERAHEIGHT / 2),"Popup1",oESCMenu);
	instance_destroy();	
}