draw_sprite_ext(sprite_index, image_index, x, y, escx, escy, 0, c_white, 1)

escx=lerp(escx, 0.8, 0.2)
escy=lerp(escy, 0.6, 0.2)

draw_set_font(fButtons)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
switch global.translation {
	case 1:
	draw_text_transformed(x,y,"CHANGE NAME",0.55,0.55,0)
	break
	case 2:
	draw_text_transformed(x,y,"MUDAR NOME",0.55,0.55,0)
	break
	case 3:
	draw_text_transformed(x,y,"CAMBIAR NOMBRE",0.55,0.55,0)
	break
}
draw_set_halign(fa_right)
draw_set_valign(fa_top)