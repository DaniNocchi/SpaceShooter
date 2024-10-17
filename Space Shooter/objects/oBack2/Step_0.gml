if room = rMenu {
	if place_meeting(x,y,oMouse) {
		sprite_index=sBackBlack
		if boolmouse=0 {
			boolmouse=1
			audio_play_sound(soSelect,1,0)
		}
		if mouse_check_button_released(mb_left) { 
			escx = 0.8 
			escy = 0.8
			audio_play_sound(soInteract,1,0)
			keyboard_key_press(vk_escape)
			keyboard_key_release(vk_escape)
		}
	} else {
		sprite_index=sBack
		boolmouse=0
	}
}

if room = rGame {
	if global.pause = 1 {
		if place_meeting(x,y,oMouse) {
			sprite_index=sBackBlack
			if boolmouse=0 {
				boolmouse=1
				audio_play_sound(soSelect,1,0)
			}
			if mouse_check_button_released(mb_left) { 
				escx = 0.8 
				escy = 0.8
				audio_play_sound(soInteract,1,0)
				keyboard_key_press(vk_escape)
				keyboard_key_release(vk_escape)
			}
		} else {
			sprite_index=sBack
			boolmouse=0
		}
	} else {
		sprite_index=sEmpty
	}
}

