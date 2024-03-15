if os_type = os_windows {
	x=mouse_x
	y=mouse_y
}
draw_self()


if !audio_is_playing(sMusic) {audio_play_sound(sMusic,1,1)}

audio_group_load(sounds)
audio_group_load(music)
audio_group_set_gain(sounds,global.soundsvolume/100,30)
audio_group_set_gain(music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}


if konami=0 && keyboard_check_released(vk_up) {konami=1} 
if konami=0 && keyboard_check_released(vk_up) {konami=2} else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_down) {konami=3} else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_down) {konami=4} else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_left) {konami=5}else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_right) {konami=6}else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_left) {konami=7}else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(vk_right) {konami=8}else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(ord("B")) {konami=9}else if keyboard_check_released(vk_anykey) { konami=0}
if konami=0 && keyboard_check_released(ord("A")) {
	konami=0
	if !audio_is_playing(sShoot) {audio_play_sound(sShoot, 1,1)}
} else if keyboard_check_released(vk_anykey) { konami=0}