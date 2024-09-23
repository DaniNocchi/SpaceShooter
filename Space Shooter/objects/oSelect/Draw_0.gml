draw_sprite_ext(sprite_index, image_index, x, y, escx, escy, 0, c_white, 1)

escx=lerp(escx, image_xscale-0.4, 0.2)
escy=lerp(escy, image_yscale-0.2, 0.2)


draw_set_font(fButtons)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
if selected=0 {
	switch global.translation {
		case 1:
		draw_text_transformed(x,y,"SELECT",escx+0.2,escy,0)
		break
		case 2:
		draw_text_transformed(x,y,"USAR",escx+0.2,escy,0)
		break
		case 3:
		draw_text_transformed(x,y,"USAR",escx+0.2,escy,0)
		break
	}
} else {
		switch global.translation {
		case 1:
		draw_text_transformed(x,y,"SELECTED",escx+0.2,escy,0)
		break
		case 2:
		draw_text_transformed(x,y,"USANDO",escx+0.2,escy,0)
		break
		case 3:
		draw_text_transformed(x,y,"USANDO",escx+0.2,escy,0)
		break
	}
}
draw_set_halign(fa_right)
draw_set_valign(fa_top)

