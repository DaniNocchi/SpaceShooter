draw_set_font(fTextInGameButBigger)
draw_set_halign(fa_middle)
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