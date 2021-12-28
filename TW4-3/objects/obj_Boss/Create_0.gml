/// @description Insert description here
// You can write your code in this editor
//HP
enemyHp = 1000;
hpmax = enemyHp;
//enemyHp = 50;

bossHpBar_width = 500;
bossHpBar_height = 18;

bossHpBar_x = (CAMERAWIDTH * DISPLAY_SCALE)/2	- (bossHpBar_width / 2);
bossHpBar_y = 20;


image_xscale = 2;
image_yscale = 2;

state = ENEMYSTATE.ATTACK;
enemySpeed = 0;
enemyKnockback = 0;

//SLAM SKILL
slam_cd = 3;
//Slam delay adjust at hand...

//Projectile skill
proj_cd = 5;

//SpawnWavesProcPerc
is_5th_wave_spawned = false;
is_6th_wave_spawned = false;

flashAlpha = 0;
flashColor = c_maroon;

dmg = 0;
dmgTaken = false;
dmgBlock = 0;

alarm[0] = room_speed * slam_cd;
alarm[1] = room_speed * proj_cd;
alarm[2] = room_speed * 2;

