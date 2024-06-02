global.soundsvolume = 30
global.musicvolume = 50
global.debugunlock = false
global.translation = 1
load_game()
audio_group_load(sounds)
audio_group_load(music)
boolean=0

if !file_exists("svs.dat") {
	save_game()
}