backgroundX = 128;
backgroundY = 160;
backgroundScale = 3.5;
draw_sprite_ext(sBase,image_index,backgroundX,backgroundY,backgroundScale,backgroundScale,0,c_white,1)

draw_set_halign(fa_middle)
draw_set_valign(fa_middle)
draw_text(backgroundX + ((sprite_get_width(sBase)*backgroundScale)/2), backgroundY+25,"US Flag")
draw_set_halign(fa_right)
draw_set_valign(fa_top)