if place_meeting(x,y,oMouse) {
	sprite_index=sMenustartdark
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(sInteract,1,0)
		if !layer_sequence_exists("sequences",inblack_seq) {
			inblack_seq = layer_sequence_create("sequences",0,0,seinblack)
			inblack=1
			global.menudeac=1
		}
	}
} else {
	sprite_index=sMenustart
}




if inblack=1 {
	if layer_sequence_is_finished(inblack_seq) {
		layer_sequence_destroy(inblack_seq)
		room=Game
		inblack=0
	}
}