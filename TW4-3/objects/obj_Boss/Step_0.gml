/// @description Insert description here
// You can write your code in this editor

if (enemyHp <= 0){
	state = ENEMYSTATE.DEAD;
}


if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

if (!is_5th_wave_spawned && (enemyHp / hpmax) <= 0.5) {
	is_5th_wave_spawned = true;
	SpawnEnemies(2, 1, 1, 1);
	repeat(6) {
		var x_rand = irandom_range(100, 300);
		if (irandom(1) == 1) {
			x_rand = -1 * x_rand;
		}
		var y_rand = irandom_range(100, 300);
		if (irandom(1) == 1) {
			y_rand = -1 * y_rand;
		}
		instance_create_layer(x + x_rand, y + y_rand, "Instances", obj_enemy_a);
	}
}

if (!is_6th_wave_spawned && (enemyHp / hpmax) <= 0.25) {
	is_6th_wave_spawned = true;
	SpawnEnemies(2, 1, 1, 1);
	slam_cd = slam_cd * 0.75;
	proj_cd = proj_cd * 0.75;
	dmgBlock = 0.25;
	repeat(6) {
		var x_rand = irandom_range(100, 300);
		if (irandom(1) == 1) {
			x_rand = -1 * x_rand;
		}
		var y_rand = irandom_range(100, 300);
		if (irandom(1) == 1) {
			y_rand = -1 * y_rand;
		}
		instance_create_layer(x + x_rand, y + y_rand, "Instances", obj_enemy_a);
	}
}


switch (state) {
	case ENEMYSTATE.FREE: BossState_Free(); break;
	case ENEMYSTATE.HIT: BossState_Hit(); break;
	case ENEMYSTATE.DEAD: BossState_Dead(); break;
	//case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
	case ENEMYSTATE.ATTACK: BossState_Attack(); break;
}