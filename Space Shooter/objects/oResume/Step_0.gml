if global.menudeac=0 {
if place_meeting(x,y,oMouse) {
    sprite_index=sResumedark
    if mouse_check_button_pressed(mb_left) { 
		global.pause=0
    }
} else {
    sprite_index=sResumelight
}
}
