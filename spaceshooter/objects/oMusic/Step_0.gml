if !audio_is_playing(sMusic) {audio_play_sound(sMusic,1,1)}

audio_group_load(Sounds)
audio_group_load(Music)
audio_group_set_gain(Sounds,global.soundsvolume/100,30)
audio_group_set_gain(Music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}
