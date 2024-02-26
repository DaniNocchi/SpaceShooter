if os_type = os_windows {
	x=mouse_x
	y=mouse_y
} else if os_type = os_android {
	if mouse_check_button(mb_left) {
		x=mouse_x
		y=mouse_y
	} else {
		x=1000
		y=1000
	}
}
draw_self()


if !audio_is_playing(sMusic) {audio_play_sound(sMusic,1,1)}

audio_group_load(sounds)
audio_group_load(music)
audio_group_set_gain(sounds,global.soundsvolume/100,30)
audio_group_set_gain(music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}
