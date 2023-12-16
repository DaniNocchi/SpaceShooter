if place_meeting(x,y,oPlayer) {
	instance_destroy()
	global.hab3=4
	if !audio_is_playing(sHabtaken){audio_play_sound(sHabtaken,1,0) }
}