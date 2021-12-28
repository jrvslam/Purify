/// @description Insert description here
// You can write your code in this editor
with (obj_char) {
	if (mana < manaMax) {
		if (mana + 10 > manaMax) {
			mana = manaMax;
		} else {
			mana += 10;
		}
		
		instance_create_layer(x, y, "Popup", obj_mana_popup);
		audio_play_sound(sndManaPopup, 10, 0);
		instance_destroy(other);
	} else {
		if (!isPopupCd) {
			isPopupCd = true;
			instance_create_layer(x, y, "Popup", obj_fullmana_popup);
		}
	}
}
