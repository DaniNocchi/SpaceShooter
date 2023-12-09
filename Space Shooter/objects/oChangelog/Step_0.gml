if global.options=0 {
	sprite_index=sEmpty
} else {
	if place_meeting(x,y,oMouse) {
    sprite_index=sChangelogdark
    if mouse_check_button_pressed(mb_left) { 
		if global.options=1  { 
			audio_play_sound(sInteract,1,0)
			global.changelog=1
		}
    }
} else {
    sprite_index=sButtontemplate30
}
}