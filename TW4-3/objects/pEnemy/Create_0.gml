/// @description Insert description here
// You can write your code in this editor 

//INTRINSIC VARIABLES
state = ENEMYSTATE.FREE;
hspd = 0;
vspd = 0;
wlkspd = enemySpeed;
dagspd = round(enemySpeed * ((sqrt(2) / 2)));
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 30
wait = 0;
move_image_spd = 0.4;
att_image_spd = 2;
image_speed = move_image_spd;

//knockback duration
kb = 0;
kbDuration = 50;

stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

//HP
hpmax = enemyHp;

hpbar_width = 40;
hpbar_height = 6;
hpbar_x = x - hpbar_width / 2;
hpbar_y = y + 5;

//Flash when hit
flashAlpha = 0;
flashColor = c_white;

//isHit
isHit = false;
isDead = false;
isAtt = true;

//Enemy Sprite;
sprMove = sEnemy_r;

//Aggro
aggroCheck = 0;
aggroCheckDuration = 100;

//Attack Checks
//alarm[10] = 250;