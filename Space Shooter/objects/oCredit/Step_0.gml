
if place_meeting(x,y,oMouse) {
	sprite_index=sMenucreditsdark
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		audio_play_sound(sInteract,1,0)
		if !layer_sequence_exists("sequences",credits_sq)  { 
        credits_sq = layer_sequence_create("sequences",0,0,seCredits)
		}
		global.menudeac=1
	}
} else {
	sprite_index=sMenucredits
}
if keyboard_check(vk_escape) && layer_sequence_exists("sequences",credits_sq) {
	layer_sequence_destroy(credits_sq)	
	global.menudeac=0
	if back=1 { back=0}
	instance_deactivate_layer("back")
} 
