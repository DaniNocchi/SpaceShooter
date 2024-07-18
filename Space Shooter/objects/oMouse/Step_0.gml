   x=mouse_x
y=mouse_y
draw_self()
if global.bestscore2="" global.bestscore2=0
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

 




if global.bestscore2>=500 {
	if !steam_get_achievement("record500") {
		steam_set_achievement("record500")
	}
}
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

steam_set_stat_float("death", global.deaths)
steam_set_stat_float("maxp", global.bestscore2)
