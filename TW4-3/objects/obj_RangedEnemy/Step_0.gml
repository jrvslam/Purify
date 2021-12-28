/// @description Insert description here
// You can write your code in this editor
hpbar_x = x - hpbar_width / 2;
hpbar_y = y + 10;

if(enemyHp <= 0){
	state = ENEMYSTATE.DEAD;
}

if (isDead) {
	image_alpha -= 0.05;
	if (image_alpha <= 0) {
		instance_destroy();
	}
}

//flash
if (flashAlpha > 0) {
	flashAlpha -= 0.05;
}

switch (state) {
	case ENEMYSTATE.HIT:
	case ENEMYSTATE.FREE: 
		if (instance_exists(obj_char)) {
			if (point_distance(x, y, obj_char.x, obj_char.y) < enemyAggroRadius){
				state = ENEMYSTATE.ATTACK;
				aggro = true;
			}
		}
	break;
	
	//case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
	case ENEMYSTATE.ATTACK: EnemyState_Attack_Ranged(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
}