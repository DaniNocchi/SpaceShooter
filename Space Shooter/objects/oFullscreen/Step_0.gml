if global.optfinish=0 {
	sprite_index=sEmpty
} else {
	if place_meeting(x,y,oMouse) {
		if boolmouse=0 {
			boolmouse=1
			audio_play_sound(soSelect,1,0)
		}
		if mouse_check_button_released(mb_left) { 
			escx = 0.8 
			escy = 0.8
			audio_play_sound(soInteract,1,0)
			if window_get_fullscreen() {
				window_set_fullscreen(false);
				sprite_index=sBoxChecked
			} else {
				sprite_index=sBoxNotChecked
				window_set_fullscreen(true)
			}
		}
	} else {
		boolmouse=0
		if window_get_fullscreen() {
			sprite_index=sBoxChecked
		} else {
			sprite_index=sBoxNotChecked
		}
	}
}

