if place_meeting(x, y, oMouse) && global.menudeac=0 {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
	if mouse_check_button_released(mb_left) {
		escx = 0.8 
		escy = 0.8
		audio_play_sound(soInteract,1,0)
		beauty_transition(rShop, #ffffff)
	}
} else {
	sprite_index=sButton
	boolmouse=0
}