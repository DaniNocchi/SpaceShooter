global.soundsvolume = value*100
change_value()

if boolean=true {
	if	!mouse_check_button(mb_left) {
		boolean=false
		audio_play_sound(soInteract,1,0)
	}
}
