
if global.bestscore2="" global.bestscore2=0
audio_group_set_gain(sounds,global.soundsvolume/100,30)
audio_group_set_gain(music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}
steam_update()

if global.os=0 {
	x=mouse_x
	y=mouse_y
#region achievements steam


if global.bestscore2>=500 {
	if !steam_get_achievement("record500") {
		steam_set_achievement("record500")
	}
}
steam_clear_achievement("record500")

if global.bestscore2>=1000 {
	if !steam_get_achievement("record1000") {
		steam_set_achievement("record1000")
	}
}
if global.bestscore2>=2500 { 
	if !steam_get_achievement("record2500") {
		steam_set_achievement("record2500")
	}
}
if global.bestscore2>=5000 {
	if !steam_get_achievement("record5000") {
		steam_set_achievement("record5000")
	}
}






if global.deaths>=5 {
	if !steam_get_achievement("death5") {
		steam_set_achievement("death5")
	}
}
if global.deaths>=10 {
	if !steam_get_achievement("death10") {
		steam_set_achievement("death10")
	}
}
if global.deaths>=25 { 
	if !steam_get_achievement("death25") {
		steam_set_achievement("death25")
	}
}
if global.deaths>=50 {
	if !steam_get_achievement("death50") {
		steam_set_achievement("death50")
	}
}

if room=rMenu and keyboard_check(ord("Q")) and keyboard_check(ord("W")) and keyboard_check(ord("E")) and keyboard_check(ord("R")) and keyboard_check(ord("T")) and keyboard_check(ord("Y")) and glitch=0  {
	if !audio_is_playing(soGlitch) audio_play_sound(soGlitch,1,0)
	glitch = 1
	global.menudeac = 1
	layer_enable_fx("Glitch",1)
	if !steam_get_achievement("glitch") {
		steam_set_achievement("glitch")
	}
}
if glitch = 1 and !audio_is_playing(soGlitch) {
	game_end()
}
steam_set_stat_float("death", global.deaths)
steam_set_stat_float("maxp", global.bestscore2)


#region easter egg 69
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
#endregion
#endregion
} else if global.os = 1 {
	
	if room=rMenu {
		if mouse_check_button(mb_left) {
			x=mouse_x
			y=mouse_y
		} else {
			if booleanMobileCursor = 0 {
				booleanMobileCursor = 1
			alarm[0]=5
			}
		} 
	}
	
	if room = rGame {
		if global.pause=0 {
			if booleanMobileCursor = 0 {
				booleanMobileCursor = 1
				alarm[0]=5
			}
		} else {
			if mouse_check_button(mb_left) {
				x=mouse_x
				y=mouse_y
			} else {
				if booleanMobileCursor = 0 {
					booleanMobileCursor = 1
				alarm[0]=5
				}
			} 
		}
	}
}