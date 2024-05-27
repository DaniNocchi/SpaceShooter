if place_meeting(x,y,oMouse) && global.menudeac=0 {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sChangenamedark 
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		newname=get_string("New Name ",gmda_getPlayername())
		gmda_setNewname(newname)
		audio_play_sound(soInteract,1,0)
	}
} else {
	sprite_index=sChangename
	boolmouse=0
}