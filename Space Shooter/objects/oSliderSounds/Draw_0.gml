draw_slider()
draw_set_font(fButtons)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
if global.optfinish=1 {
	switch global.translation {
		case 1:
			draw_text_transformed(room_width/2,y-28,"Sounds",0.8,0.8,0)
		break;
		case 2:
			draw_text_transformed(room_width/2,y-28,"Sons",0.8,0.8,0)
		break
		case 3:
			draw_text_transformed(room_width/2,y-28,"Sonidos",0.8,0.8,0)
		break
	}
}
draw_set_halign(fa_right)
draw_set_valign(fa_top)