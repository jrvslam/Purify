/// @description Injure based on land
var dmg = max(global.curr_perc - BOSS_SPAWN_PERC, 0) * 100;

dmg = dmg - dmgBlock * dmg;

EnemyHit(dmg);
if (dmg >= 0) {
	dmgTaken = true;
}

alarm_set(2, room_speed * 2);