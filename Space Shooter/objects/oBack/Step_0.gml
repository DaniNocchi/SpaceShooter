if place_meeting(x,y,oMouse) {
	sprite_index=sMinusdark
	if mouse_check_button_released(mb_left) { 
		virtual_key_add(x,y,45,45,vk_escape)
		audio_play_sound(sInteractMusic,1,0)
	}
} else {
	sprite_index=sMinus
}