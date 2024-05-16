if place_meeting(x,y,oPlayer) {
	instance_destroy()
	global.hab3=6
	if !audio_is_playing(soHabtaken){audio_play_sound(soHabtaken,1,0) }
}