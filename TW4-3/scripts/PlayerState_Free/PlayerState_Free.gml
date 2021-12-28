// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	hspd = keyRight - keyLeft;
	vspd = keyDown - keyUp;
	image_speed = move_image_spd;
	
	x += hspd * spd;
	y += vspd * spd;
	
	x = clamp(x, 9, room_width - 8);
	y = clamp(y, 17, room_height - 17);
	
	if (vspd != 0 && hspd != 0) {
		spd = dagspd;
	} else {
		spd = wlkspd;
	}
	
	defBlock = 0;
		

	/*
	if (x mod global.cell_size == 0 || y mod global.cell_size == 0) { 
		for (var i = -1; i <= 1; i++) {
			for (var j = -1; j <= 1; j++) {
				var x_stand = (floor(x / global.cell_size) + i) * global.cell_size;
				var y_stand = (floor(y / global.cell_size) + j) * global.cell_size;
				x_stand = abs(min(x_stand, room_width));
				y_stand = abs(min(y_stand, room_height));
				instance_create_layer(x_stand, y_stand, "Land", obj_under);
			}
		}
	}
	*/
	
	//popup
	if (!isPopupCd) {
		if ((keyAttack) && isAtt && mana < attManaCost) {
			isPopupCd = true;
			instance_create_layer(x, y, "Popup1", obj_nomana_popup);
		}
		if ((keySpecial) && !isSpecial && mana < specialManaCost) {
			isPopupCd = true;
			instance_create_layer(x, y, "Popup1", obj_nomana_popup);
		}
		if ((keyLaser) && isLaser && !isLaserCd && mana < laserManaCost) {
			isPopupCd = true;
			instance_create_layer(x, y, "Popup1", obj_nomana_popup);
		}
	}
	
	if (keyAttack && isAtt && mana >= attManaCost) state = PLAYERSTATE.ATTACK_SLASH;
	if ((keySpecial) && !isSpecial && mana >= specialManaCost) state = PLAYERSTATE.ATTACK_SPECIAL;
	if (keyDefend) state = PLAYERSTATE.DEFEND;
	if ((keyDodge) && !isDodge) state = PLAYERSTATE.DODGE;
	if ((keyLaser) && isLaser && !isLaserCd && mana >= laserManaCost) state = PLAYERSTATE.ATTACK_LASER;

	/*
	var lay_id = layer_get_id("Tiles_1");
	var tile_id = layer_tilemap_get_id(lay_id);
	var lay = layer_get_id("Tiles_2")
	var tl = layer_tilemap_get_id(lay);
	var tile = tilemap_get_at_pixel(tile_id, x, y);
	if (tilemap_get_tileset(tile_id)) {
		tilemap_set_at_pixel(tl, tile_get_index(tile) - 1, x, y);

	}
	*/
}