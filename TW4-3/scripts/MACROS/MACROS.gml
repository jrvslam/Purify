// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MACROS(){
	#macro CAMERAWIDTH 640
	#macro CAMERAHEIGHT 360
	#macro CELL_SIZE 16
	#macro DISPLAY_SCALE 2.5
	#macro BOSS_SPAWN_PERC 0.6
	#macro SPREAD_RADIUS 1
	#macro SELF_HURT_PERC 0.6
	#macro SPAWN_RADIUS 10
	#macro WIN_PERC 0.8
	
	#macro LEVEL_1_SPAWN 0
	#macro LEVEL_2_SPAWN 0.1
	#macro LEVEL_3_SPAWN 0.3
	
	#macro GUIscale 2
	
	enum PLAYERSTATE {
		FREE,
		ATTACK_SLASH,
		ATTACK_SPECIAL,
		DEFEND,
		INJURED,
		DODGE,
		KNOCKBACK,
		ATTACK_LASER
	}
	
	enum ENEMYSTATE {
		FREE,
		CHASE,
		HIT,
		ATTACK,
		DEAD,
		WAIT
	}
}