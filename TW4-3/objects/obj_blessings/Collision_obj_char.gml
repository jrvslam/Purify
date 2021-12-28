/// @description Insert description here
// You can write your code in this editor
with (obj_char) {
	//hpmax += 50;
	//hp += 50;
	
	switch (other.blessingType) {
		case 1: spdBoost(); break;
		case 2: attBoost(); break;
		case 3: regenBoost(); break;
	}
	audio_play_sound(sndPowerUp, 10, 0);
}
instance_destroy();
