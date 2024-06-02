draw_sprite_ext(sprite_index, image_index, x, y, escx, escy, 0, c_white, 1)

escx=lerp(escx, image_xscale, 0.2)
escy=lerp(escy, image_yscale, 0.2)
draw_set_font(fButtons)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
if global.options!=0 {
draw_text_transformed(x,y,"CHANGELOG",escx,escy,0)
}
draw_set_halign(fa_right)
draw_set_valign(fa_top)