/// @description Regen

if (hp < hpmax) {
	hp = hp + regenRate;
}

alarm_set(9, room_speed * 5);