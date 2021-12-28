/// @description Insert description here
// You can write your code in this editor
attackDmg = 10;
image_speed = 1;
_duration = 5;

hitByAttack = ds_list_create();
startAtt = true;

_hits = noone;
alarm[0] = room_speed * _duration;
alarm[1] = room_speed * 0.5;

laserDir = 0;

with (obj_char) {
	isLaser = false;
}

audio_play_sound(sndLaser, 10, 0);