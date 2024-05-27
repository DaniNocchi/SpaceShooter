
if place_meeting(x,y,oMouse) && global.menudeac=0 {
	
	if boolmouse=0 { //mouse sound
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	
	
	sprite_index=sMenucreditsdark
	
	
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(soInteract,1,0)
		if !layer_sequence_exists("sequences",credits_sq)  { 
        credits_sq = layer_sequence_create("sequences",0,0,seCredits)
		}
		global.menudeac=1
	}
} else {
	sprite_index=sMenucredits
	boolmouse=0
}

if keyboard_check_released(vk_escape) && layer_sequence_exists("sequences",credits_sq) {
	layer_sequence_destroy(credits_sq)	
	global.menudeac=0
} 
