draw_self()
draw_set_font(fButtons)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
if global.options!=0 {
	switch global.translation {
		case 1:
		draw_text_transformed(x,y,"ENGLISH",escx,escy,0)
		break
		case 2:
		draw_text_transformed(x,y,"PORTUGUÊS",escx,escy,0)
		break
		case 3:
		draw_text_transformed(x,y,"ESPAÑOL",escx,escy,0)
		break
	}
}
draw_set_halign(fa_right)
draw_set_valign(fa_top)