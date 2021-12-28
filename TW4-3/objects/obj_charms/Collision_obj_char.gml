/// @description Insert description here
// You can write your code in this editor
with (obj_char) {
	if (hp < hpmax) {
		if (hp + 10 > hpmax) {
			hp = hpmax;
		} else {
			hp += 10;
		}
		instance_create_layer(x, y, "Popup", obj_health_popup);
		instance_destroy(other);
		audio_play_sound(sndHealthRegen, 10, 0);
	} else {
		if (!isPopupCd) {
			isPopupCd = true;
			instance_create_layer(x, y, "Popup", obj_fullhealth_popup);
		}
	}
}
