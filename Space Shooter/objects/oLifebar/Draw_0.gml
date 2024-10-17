var lifes;
lifes = (global.lives/max_lives)*100;

var Reload;
Reload = (global.breload/3)*100;
draw_healthbar(x-60,y-45,x+60,y-55,lifes,c_dkgray,c_red,c_red,0,true,false)
if global.bombs>0 {
	draw_healthbar(x-60,y-85,x+60,y-95,Reload,c_dkgray,c_red,c_lime,0,true,false)
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
			draw_text(x,y-85,string(global.bombs)+"	bombs left")
		break
		case 2:
			draw_text(x,y-85,string(global.bombs)+" Bombas restantes")
		break
		case 3:
			draw_text(x,y-85,string(global.bombs)+" Bombas restantes")
		break
	}
}