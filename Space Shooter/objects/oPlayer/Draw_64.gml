draw_set_halign(fa_left)
if debugmode=1 {
draw_set_font(fDefault)
draw_text(15,15,string(hspd)+" hspd")
draw_text(15,30,string(vspd)+" vspd")
draw_text(15,45,string(global.count)+" amount of meteors killed by bullet")
draw_text(15,60,string(global.mactives)+" amount of meteors alive (actual limit = "+string(global.mlimit)+")")
draw_text(15,75,string(global.lives)+" lifes")
draw_text(15,90,string(spd)+" spd")
draw_text(15,105,string(maxspd)+" maxspd")
draw_text(15,120,string(shotcol)+" shot cooldown")
draw_text(15,135,string(hitcooldown)+" hit cooldown")
draw_text(15,150,string(global.pause)+" pause")
draw_text(15,165,string(global.musicvolume)+" music volume")
draw_text(15,180,string(global.soundsvolume)+" sounds volume")
draw_text(15,195,string(global.mspd)+" meteors speed")
draw_text(15,210,string(habrandom)+" hab random")
draw_text(15,225,string(global.bombs)+" bombs")
draw_text(15,240,string(global.hab3)+" hab 3")
draw_text(15,255,string(global.hab3disp)+" hab 3 display")
draw_text(15,270,string(global.mrot)+" meteor rotation")
draw_text(15,285,string(global.mspd)+" meteor speed")
draw_text(15,300,string(global.bdamage)+" bomb damage")
}


draw_set_halign(fa_middle)
draw_set_font(fGameover2)
draw_text(x,y-70,string(global.count)+" Points")
if global.bombs>0 {
	draw_text(x,y-85,string(global.bombs)+" bombs left")
}
draw_set_font(fGameover)
if outwarn = 1 {
draw_text_scribble(670,375,"[c_red][SHAKE]YOU ARE OUTSIDE THE GAME, RETURN NOW") //i got scared reading this 
}
draw_text(670,10,"Wave "+string(global.wave))
