/// @description Self-Hurt Attack

var dmg = CheckDmgToEnemy(10) * 20;

if (dmg > 0) EnemyHit(dmg);

alarm_set(10, 250);
