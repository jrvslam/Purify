/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case rm_splash:
		if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left)){
			room_goto(rm_start0);
			audio_play_sound(sndMenuChange, 10, 0);
			audio_play_sound(sndMenuBGM, 10, 1);
		}
		break;
	case rm_start0:
		if (!audio_is_playing(sndMenuBGM)) {
			audio_play_sound(sndMenuBGM, 10, 1);
		}
		break;
	case rm_start:
		if (keyboard_check_pressed(vk_anykey)) {
			isLose = false;
			room_goto(gameroom);
			audio_play_sound(sndMenuChange, 10, 0);
			audio_stop_sound(sndMenuBGM);
			audio_play_sound(sndGameBGM1, 10, 0);
		}

			
		break;
	case gameroom:
		if (keyboard_check_pressed(vk_escape)){
			var inst = 0;
			
			if (instance_number(oESCMenu) == 0){
				//instance_create_depth(room_width/2,room_height/2,9999999,oESCMenu)
				inst = instance_create_layer(global.cameraX + (CAMERAWIDTH / 2), global.cameraY + (CAMERAHEIGHT / 2), "Popup1",oESCMenu);
				
			}
		}
		
		if (isLose) {
			audio_play_sound(sndGameOver, 10, 0);
			room_goto(rm_lose);
		}
		
		if (isWin) {
			audio_play_sound(sndWin, 10, 0);
			room_goto(rm_win);
		}
		
		if (!audio_is_playing(sndGameBGM1) && !audio_is_playing(sndGameBGM2)) {
			audio_play_sound(sndGameBGM2, 10, 0);
		} else if (!audio_is_playing(sndGameBGM2) && !audio_is_playing(sndGameBGM1)) {
			audio_play_sound(sndGameBGM1, 10, 0);
		}
		break;
	case rm_win:
	case rm_lose:
		if (++roomChangeTimer > roomChangeDelay) {
			roomChangeTimer = 0;
			canChange = true;
		}
		if (canChange && keyboard_check_pressed(vk_anykey)) {
			canChange = false;
			game_restart();
			audio_play_sound(sndMenuChange, 10, 0);
			audio_play_sound(sndMenuBGM, 10, 0);
		}
		break;
		
}