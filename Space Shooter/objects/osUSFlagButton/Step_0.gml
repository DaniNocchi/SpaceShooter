if live_call() return live_result
if place_meeting(x,y,oMouse) && global.menudeac=0 {
	if boolmouse=0 { //mouse sound
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(soInteract,1,0)
		escx = 0.8 
		escy = 0.8
		beauty_transition(rShop,c_white)
	}
} else {
	sprite_index=sButton
	boolmouse=0
}

