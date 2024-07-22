draw_set_halign(fa_left)
if debugmode=1 {
draw_set_font(fSmall)
draw_text(15,15,"-----MOVEMENT-----")
draw_text(15,30,string(hspd)+" hspd")
draw_text(15,45,string(vspd)+" vspd")
draw_text(15,60,string(spd)+" spd")
draw_text(15,75,string(maxspd)+" maxspd")
draw_text(15,90,string(global.mrot)+" meteor rotation")
draw_text(15,105,string(global.mspd)+" meteor speed")

draw_text(15,135,"-----COUNTING AND COOLDOWNS-----")
draw_text(15,150,string(global.count)+" amount of meteors killed by bullet")
draw_text(15,165,string(global.mactives)+" amount of meteors alive (actual limit = "+string(global.mlimit)+")")
draw_text(15,180,string(global.lives)+" lifes")
draw_text(15,195,string(shotcol)+" shot cooldown")
draw_text(15,210,string(hitcooldown)+" hit cooldown")

draw_text(15,240,"-----PAUSE AND CONFIGS-----")
draw_text(15,255,string(global.pause)+" pause")
draw_text(15,270,string(global.musicvolume)+" music volume")
draw_text(15,285,string(global.soundsvolume)+" sounds volume")

draw_text(15,315,"-----HABILITIES STUFF-----")
draw_text(15,330,string(global.hab3)+" hab 3")
draw_text(15,345,string(global.hab3disp)+" hab 3 display")
draw_text(15,360,string(habrandom)+" hab random")
draw_text(15,375,string(global.bombs)+" bombs")
draw_text(15,390,string(global.bdamage)+" bomb damage")
draw_text(15,405,string(global.destroyshield)+" global destroy shield")
draw_text(15,435,string(global.deaths)+" deaths")
}

draw_set_halign(fa_middle)
draw_set_font(fTextInGame)
switch global.translation {
	case 1:
		draw_text(x,y-70,string(global.count)+" Points")
	break
	case 2:
		draw_text(x,y-70,string(global.count)+" Pontos")
	break
	case 3:
		draw_text(x,y-70,string(global.count)+" Puntos")
	break
}

if global.bombs>0 {
	switch global.translation {
		case 1:
			draw_text(x,y-85,string(global.bombs)+" bombs left")
		break
		case 2:
			draw_text(x,y-85,string(global.bombs)+" Bombas restantes")
		break
		case 3:
			draw_text(x,y-85,string(global.bombs)+" Bombas restantes")
		break
	}
}
draw_set_font(fTextInGameButBigger)
if outwarn = 1 {
switch global.translation {
	case 1:
		draw_text_scribble(670,375,"[c_red][SHAKE]YOU ARE OUTSIDE THE GAME, RETURN NOW")
	break
	case 2:
		draw_text_scribble(670,375,"[c_red][SHAKE]VOCÊ ESTÁ FORA DO JOGO, RETORNE AGORA")
	break
	case 3:
		draw_text_scribble(670,375,"[c_red][SHAKE]ESTÁS FUERA DEL JUEGO, VUELVE AHORA")
	break
}
}
switch global.translation {
	case 1:
		draw_text(670,12,"Wave "+string(global.wave))
	break
	case 2:
		draw_text(670,12,"Onda "+string(global.wave))
	break
	case 3:
		draw_text(670,12,"Oleada "+string(global.wave))
	break
}

draw_self()