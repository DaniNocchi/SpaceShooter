x=mouse_x
y=mouse_y
draw_self()

audio_group_set_gain(sounds,global.soundsvolume/100,30)
audio_group_set_gain(music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}
steam_update()

if place_meeting(x,y,oPlayer) {
	if mouse_check_button_released(mb_left) {
		if global.count=69 { 
			if !audio_is_playing(soEasterEgg) audio_play_sound(soEasterEgg,2,0)
			if !steam_get_achievement("EasterEgg") {
				steam_set_achievement("EasterEgg")
			}
		}    
	}
}
if keyboard_check_released(vk_control) {
	if !steam_get_achievement("EasterEgg") {
		steam_set_achievement("EasterEgg")
	}
}
if keyboard_check_released(vk_shift) {
	steam_clear_achievement("EasterEgg")
}






if global.bestscore2>=500 {
	if !steam_get_achievement("record500") {
		steam_set_achievement("record500")
	}
} else if global.bestscore2>=1000 {
	if !steam_get_achievement("record1000") {
		steam_set_achievement("record1000")
	}
} else if global.bestscore2>=2500 { 
	if !steam_get_achievement("record2500") {
		steam_set_achievement("record2500")
	}
} else if global.bestscore2>=5000 {
	if !steam_get_achievement("record5000") {
		steam_set_achievement("record5000")
	}
}