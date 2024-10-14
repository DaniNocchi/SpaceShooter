if place_meeting(x,y,oMouse) {
	sprite_index=sButtonDark
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	if mouse_check_button_released(mb_left) { 
		audio_play_sound(soInteract,1,0)
		keyboard_key_press(vk_enter)
		keyboard_key_release(vk_enter)
	}
} else {
	sprite_index=sButton
	boolmouse=0
}

if oChangeName.escFromTheButtons != 1 {
	escx = 0.8
	escy = 0.8
	oChangeName.escFromTheButtons = 1 
}
