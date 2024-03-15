if place_meeting(x, y, oMouse) {
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(sHabtaken,1,0)
	}
}