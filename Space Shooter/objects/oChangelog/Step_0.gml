if global.options=0 {
	sprite_index=sEmpty
} else {
	if place_meeting(x,y,oMouse) {
		if boolmouse=0 {
			boolmouse=1
			audio_play_sound(soSelect,1,0)
		}
		sprite_index=sButtonDark
		if  mouse_check_button_released(mb_left) {
			escx = 0.8 
			escy = 0.8
			if global.options=1  { 
				audio_play_sound(soInteract,1,0)
				global.changelog=1
			}
		}
	} else {
		sprite_index=sButton
		boolmouse=0
	}
}