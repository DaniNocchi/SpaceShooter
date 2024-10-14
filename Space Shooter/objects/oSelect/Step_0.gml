if place_meeting(x, y, oMouse) and global.skin != skin {
	if boolmouse=0 {
		boolmouse=1
		selected=0
		audio_play_sound(soSelect,1,0)
	}
	sprite_index=sButtonDark
	if mouse_check_button_released(mb_left) {
		escx = 0.4
		escy = 0.6
		audio_play_sound(soInteract,1,0)
		global.skin=skin
		save_game()
	}
} 

if !place_meeting(x,y,oMouse) and global.skin != skin {
	sprite_index=sButton
	boolmouse=0
	selected=0
}
if global.skin == skin {
	sprite_index=sButtonDark
	selected=1
}


if skinIndexTimer < room_speed/sprite_get_speed(skin) {
	skinIndexTimer++ 
} else {
	if skinIndex < sprite_get_number(skin) { 
		skinIndex++ 
	} else {
		skinIndex = 1
	}
	skinIndexTimer = 0
}