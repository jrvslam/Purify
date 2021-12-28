/// @description Camera setup

//Camera
global.cameraX = 0;
global.cameraY = 0;

bossDeadTransition = false;
charBossxDis = 0;
charBossyDis = 0;
cameraTimer = 0;

target = obj_char;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], CAMERAWIDTH, CAMERAHEIGHT);

//Display
displayScale = DISPLAY_SCALE;
displayWidth = CAMERAWIDTH * displayScale;
displayHeight = CAMERAHEIGHT * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

alarm[0] = 1;