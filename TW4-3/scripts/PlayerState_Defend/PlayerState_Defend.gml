// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Defend(){
	defBlock = 0.9;
	//mask_index = sDefend;
	if(sprite_index != sDefend)
	{ 
		sprite_index = sDefend;
		image_index = 0;
		image_speed = 0;
	}
	
	/* //to move slower while defending
	hspd = keyRight - keyLeft;
	vspd = keyDown - keyUp;
	
	x += hspd * spd * defSpdReduc;
	y += vspd * spd * defSpdReduc;
	
	x = clamp(x, 0, room_width - sprite_width);
	y = clamp(y, 0, room_height - sprite_height);
	
	if (vspd != 0 && hspd != 0) {
		spd = dagspd * defSpdReduc;
	} else {
		spd = wlkspd * defSpdReduc;
	}
	*/
	
	if(!keyDefend)
	{
		sprite_index = sChar_r;
		mask_index = sCharMask;
		state = PLAYERSTATE.FREE;
		defBlock = 0;
	}
}