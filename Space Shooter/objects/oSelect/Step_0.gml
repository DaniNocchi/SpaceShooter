if place_meeting(x, y, oMouse) and global.skin != skin {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
	if mouse_check_button_released(mb_left) {
		escx = 0.4
		escy = 0.6
		audio_play_sound(soInteract,1,0)
		global.skin=skin
		
	}
} else if !place_meeting(x,y,oMouse) and global.skin != skin {
	sprite_index=sButton
	boolmouse=0
} else if global.skin = skin {
	sprite_index=sButtonDark
	selected=1
}
