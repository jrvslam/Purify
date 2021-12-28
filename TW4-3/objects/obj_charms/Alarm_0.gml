/// @description Insert description here
// You can write your code in this editor
speed -= 0.2;
if (speed >= 0) {
	alarm_set(0, 20);
} else {
	speed = 0;
}