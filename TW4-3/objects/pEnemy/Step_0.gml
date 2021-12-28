/// @description Insert description here
// You can write your code in this editor
hpbar_x = x - hpbar_width / 2;
hpbar_y = y + 10;

//flash
if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

if (enemyHp <= 0) {
	state = ENEMYSTATE.DEAD;
}

if (isDead) {
	image_alpha -= 0.05;
	if (image_alpha <= 0) {
		audio_play_sound(sndMinionDeath, 10, 0);
		instance_destroy();
	}
}

//handle state changes
switch (state) {
	case ENEMYSTATE.FREE: EnemyState_Free(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
	case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
	case ENEMYSTATE.ATTACK: EnemyState_Attack(); break;
}

UpdateLand(x, y, -1, SPREAD_RADIUS);