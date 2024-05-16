if global.options=0 {
	sprite_index=sEmpty
} else {
if place_meeting(x,y,oMouse) {
	sprite_index=sMinusdark
	if mouse_check_button_released(mb_left) { 
		global.soundsvolume-=10
		audio_play_sound(soInteract,1,0)
	}
} else {
	soundstop=1
	sprite_index=sMinus
}
}