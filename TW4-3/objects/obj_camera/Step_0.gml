/// @description Follow Target


if (instance_exists(target) && !bossDeadTransition) {
	global.cameraX = target.x - CAMERAWIDTH / 2;
	global.cameraY = target.y - CAMERAHEIGHT / 2;
	
	global.cameraX = clamp(global.cameraX, 0, room_width - CAMERAWIDTH);
	global.cameraY = clamp(global.cameraY, 0, room_height - CAMERAHEIGHT);
	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}

if (bossDeadTransition) {
	cameraTimer = cameraTimer + 1;
	if (cameraTimer > 20) {
		cameraTimer = 0;
		target = obj_Boss_dead;
		bossDeadTransition = false;
	}
	global.cameraX = global.cameraX + charBossxDis;
	global.cameraY = global.cameraY + charBossyDis;
	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
	
	
	//target = obj_Boss_dead;
}

