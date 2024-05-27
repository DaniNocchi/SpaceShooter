x=mouse_x
y=mouse_y
draw_self()

audio_group_set_gain(sounds,global.soundsvolume/100,30)
audio_group_set_gain(music,global.musicvolume/100,30)
if global.soundsvolume>100 {global.soundsvolume=100} else if global.soundsvolume<0{global.soundsvolume=0}
if global.musicvolume>100 {global.musicvolume=100} else if global.musicvolume<0{global.musicvolume=0}
