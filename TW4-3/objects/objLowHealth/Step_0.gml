/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_char)) {
	x = obj_char.x;
	y = obj_char.y;
	
	x = clamp(x, CAMERAWIDTH / 2, room_width - CAMERAWIDTH / 2);
	y = clamp(y, CAMERAHEIGHT / 2, room_height - CAMERAHEIGHT / 2);
	
	if (obj_char.hp > 0.5 * obj_char.hpmax) {
		instance_destroy();
	}
}