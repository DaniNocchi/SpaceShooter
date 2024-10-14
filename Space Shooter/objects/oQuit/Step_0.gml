if place_meeting(x,y,oMouse) && global.menudeac=0 {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
	if mouse_check_button_released(mb_left)  { 
		if room=rMenu {
			game_end()
		} else if room=rGame {
			escx = 0.8 
			escy = 0.8
			instance_activate_layer("player")
			if part_system_exists(oPlayer.WalkParticle) {
				part_system_destroy(oPlayer.WalkParticle)
			}
			instance_deactivate_layer("player")
			audio_play_sound(soInteract,1,0)
			beauty_transition(rMenu, #ffffff)
			gmda_submit(1,global.count)
			global.menudeac=1
		}
	}
} else {
	sprite_index=sButton
	boolmouse=0
}