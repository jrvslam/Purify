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
				sprite_index = sSummoner;
				image_alpha = 0.5;
			}
		}
	break;
	/*
		if (sprite_index != sSummoner_hit)
		{
			sprite_index = sSummoner_hit;
			image_index = 0;
		}
		
		
		
		if (animation_end())
		{
			sprite_index = sSummoner;
			state = PLAYERSTATE.FREE;
		}
		*/	
	case ENEMYSTATE.DEAD: EnemyState_Dead(); break;
	//case ENEMYSTATE.CHASE: EnemyState_Chase(); break;
	case ENEMYSTATE.ATTACK: EnemyState_Attack_Summoner();
	/*
		image_alpha += 1/(2*60*atk_cd);
		if(image_alpha >1){
			//Cast Trap
			var inst = instance_create_layer(obj_char.x,obj_char.y,"Instances",obj_Trap);
			state = ENEMYSTATE.FREE;
		}
	*/
	break;
}