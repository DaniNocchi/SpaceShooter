draw_set_halign(fa_left)
if debugmode=1 {
draw_set_font(fSmall)
draw_text(15,15*1,"-----MOVEMENT-----")
draw_text(15,15*2,string(hspd)+" hspd")
draw_text(15,15*3,string(vspd)+" vspd")
draw_text(15,15*4,string(spd)+" spd")
draw_text(15,15*5,string(maxspd)+" maxspd")
draw_text(15,15*6,string(global.mrot)+" meteor rotation")
draw_text(15,15*7,string(global.mspd)+" meteor speed")

draw_text(15,15*9,"-----COUNTING AND COOLDOWNS-----")
draw_text(15,15*10,string(global.count)+" amount of meteors killed by bullet")
draw_text(15,15*11,string(global.mactives)+" amount of meteors alive (actual limit = "+string(global.mlimit)+")")
draw_text(15,15*12,string(global.lives)+" lifes")
draw_text(15,15*13,string(shotcol)+" shot cooldown")
draw_text(15,15*14,string(hitcooldown)+" hit cooldown")
						 
draw_text(15,15*16,"-----PAUSE AND CONFIGS-----")
draw_text(15,15*17,string(global.pause)+" pause")
draw_text(15,15*18,string(global.musicvolume)+" music volume")
draw_text(15,15*19,string(global.soundsvolume)+" sounds volume")

draw_text(15,15*21,"-----HABILITIES STUFF-----")
draw_text(15,15*22,string(global.hab3)+" hab 3")
draw_text(15,15*23,string(global.hab3disp)+" hab 3 display")
draw_text(15,15*24,string(habrandom)+" hab random")
draw_text(15,15*25,string(global.bombs)+" bombs")
draw_text(15,15*26,string(global.bdamage)+" bomb damage")
draw_text(15,15*27,string(global.destroyshield)+" global destroy shield")
draw_text(15,15*28,string(global.deaths)+" deaths")

draw_text(15,15*30,string(repeated)+" repeated")
draw_text(15,15*31,string(damaged)+" damaged")
draw_text(15,15*32,string(damageSkin)+" damageSkin")
draw_text(15,15*33,string(DamageBoolean)+" damageBoolean")
draw_text(15,15*34,string(global.skin)+" skin")
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
draw_sprite_ext(global.skin,image_index,x,y,1,1,image_angle,c_white,image_alpha)
