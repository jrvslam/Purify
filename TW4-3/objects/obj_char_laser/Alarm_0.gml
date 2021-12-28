/// @description End Laser
with (obj_char) {
	isLaser = true;
	isLaserCd = true;
}
audio_stop_sound(sndLaser);
instance_destroy();