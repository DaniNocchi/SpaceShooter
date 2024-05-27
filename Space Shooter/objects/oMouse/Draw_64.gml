if global.optfinish=1 {
	draw_healthbar(oMinussound.x+30,oMinussound.y+10,oPlussound.x-30,oPlussound.y-10,global.soundsvolume,c_gray,c_white,c_white,0,true,false)
	draw_healthbar(oMinusmusic.x+30,oMinusmusic.y+10,oPlusmusic.x-30,oPlusmusic.y-10,global.musicvolume,c_gray,c_white,c_white,0,true,false)
} else {}
draw_self()

