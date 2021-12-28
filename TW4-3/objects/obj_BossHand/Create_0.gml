/// @description Insert description here
// You can write your code in this editor

image_alpha=1;
hitByAttack = ds_list_create();


_hits = noone;
startAtt = true;

_slam_delay = 0.5;

image_speed = 1;
handUptime = 10;

alarm[0] = room_speed * _slam_delay;
attackDmg = 20;

state = ENEMYSTATE.FREE;
