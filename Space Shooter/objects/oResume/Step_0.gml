if global.menudeac=0 {
if place_meeting(x,y,oMouse) {
		if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
    sprite_index=sResumedark
    if mouse_check_button_released(mb_left) { 
		global.pause=0
    }
} else {
    sprite_index=sResumelight
	boolmouse=0
}
}
