if global.options=0 {
	sprite_index=sEmpty
} else {
	if place_meeting(x,y,oMouse) {
		if boolmouse=0 {
			boolmouse=1
			audio_play_sound(soSelect,1,0)
		}
		sprite_index=sPlusdark
		if mouse_check_button_released(mb_left) { 
			if global.translation<3 global.translation+= 1 else global.translation=1
			escx = 0.8 
			escy = 0.8
			audio_play_sound(soInteract,1,0)
		}
	} else {
		soundstop=1
		boolmouse=0
		sprite_index=sPlus
	}
}

