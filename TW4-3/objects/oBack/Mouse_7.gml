/// @description Insert description here
// You can write your code in this editor
if (room == rm_credits){	
	room_goto(rm_start0);
	audio_play_sound(sndMenuBGM, 10, 0);
}
if (instance_number(oInstruction) != 0){
	instance_destroy(oInstruction);
	instance_destroy(sBack);
	if (instance_number(oESCMenu) == 0){

		inst = instance_create_layer(global.cameraX + (CAMERAWIDTH / 2), global.cameraY + (CAMERAHEIGHT / 2),"Popup1",oESCMenu);

	}
	else{

	}
}