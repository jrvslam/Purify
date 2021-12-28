/// @description Insert description here
// You can write your code in this editor
hp = 100;
hpmax = hp;
mana = 100;
manaMax = 100;

healthbar_width = 250;
healthbar_height = 18;

healthbar_x = 20;
healthbar_y = CAMERAHEIGHT*DISPLAY_SCALE - 60;
spec_x = 20;
spec_y = CAMERAHEIGHT*DISPLAY_SCALE - 140;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

spd = 3.5;
wlkspd = spd;
hspd = 0;
vspd = 0;

dagspd = ceil(spd * ((sqrt(2) / 2)));
//dagspd = spd;

depth = -100;
image_speed = .4;
move_image_spd = .4;
att_image_spd = 2;
lastSprite = sprite_index;
charScale = 0.75;
image_xscale = charScale * image_xscale;
image_yscale = charScale * image_yscale;

x_offset = 8;
y_offset = 16;
frame_size = 17;
dir = 0;

x_frame = 0;
y_frame = 0;

anim_length = 4;
anim_speed = 4;

//booster
boosters = false;
spdBstTimer = 0;
spdBstDur = room_speed * 5;
isSpdBoost = false;

attBstTimer = 0;
attBstDur = room_speed * 5;
isAttBoost = false;

regenBstTimer = 0;
regenBstDur = room_speed * 5;
isRegenBst = false;

//Flash when hit
flashAlpha = 0;
flashColor = c_white;

//Attack
isAtt = true;
attTimer = 0;
attCooldown = 40;
attManaCost = 5;

//Special
specCounter = 0;
isSpecial = false;
specialCd = room_speed * 6;
specialManaCost = 20;

//Dodge
dodgeRange = 50;
dodgeTimer = 0;
dodgeCooldown = room_speed * 2;
isDodge = false;

//Laser
isLaser = true;
isLaserCd = false;
LaserDuration = 5;
laserTimer = 0;
LaserCooldown = room_speed * 10;
laserManaCost = 40;

isHurt = false;

//popupcd
isPopupCd = false;
popupTimer = 0;
popupCd = 100;

isKnockback = false;
knockbackDur = 20;
knockbackTimer = 0;

char_spread_radius = SPREAD_RADIUS;


alarm[9] = room_speed * 5;