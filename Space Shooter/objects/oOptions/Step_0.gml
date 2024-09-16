#region turn on and off
if place_meeting(x, y, oMouse) {
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(soInteract,1,0)
		global.options=1
		global.menudeac=1
		escx = 0.8 
		escy = 0.8
	}
}

if keyboard_check_released(vk_escape) && layer_sequence_exists("sequences", options_sq) {
	global.options=0
	save_game()
	global.menudeac=0
	global.optfinish=0
}
#endregion
#region what happens
if global.options=1 {
	if !layer_sequence_exists("sequences",options_sq) { 
	options_sq = layer_sequence_create("sequences",0,0,seOptions) 
}
		if layer_sequence_is_finished(options_sq) { 
			global.optfinish=1
			instance_activate_layer("configs")	
		}
} else {
	layer_sequence_destroy(options_sq);
	instance_deactivate_layer("configs")
}
#endregion
#region unnecessary sprite bugfix
if place_meeting(x,y,oMouse) && global.menudeac=0 {
		if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
} else {
	boolmouse=0
	sprite_index=sButton
}
#endregion