if place_meeting(x,y,oMouse) {
	sprite_index=sChangenamedark 
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		newname=get_string_async("New Name ",gmda_getPlayername())
		gmda_setNewname(newname)
		alarm[0]=room_speed*1
		audio_play_sound(sInteract,1,0)
	}
} else {
	sprite_index=sChangename
}