change_value()
global.musicvolume = value*100
if boolean=true {
	if	!mouse_check_button(mb_left) {
		boolean=false
		audio_play_sound(soInteractMusic,1,0)
	}
}