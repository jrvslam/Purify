/// @description Self Hurt
PercentageCounter();

if (global.curr_perc_def >= SELF_HURT_PERC) {
	with (obj_char) {
		PlayerHit(30 * global.curr_perc_def);
	}
}

alarm_set(6, 1000);