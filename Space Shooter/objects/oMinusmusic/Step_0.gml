if global.options=0 {
	sprite_index=sEmpty
} else {
if place_meeting(x,y,oMouse) {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sMinusdark
	if mouse_check_button_released(mb_left) { 
		global.musicvolume-=10
		audio_play_sound(soInteractMusic,1,0)
	}
} else {
	soundstop=1
	boolmouse=0
	sprite_index=sMinus
}
}