if live_call() return live_result
backgroundX = 128;
backgroundY = 160;
backgroundScale = 3.5;
draw_sprite_ext(sBase,image_index,backgroundX,backgroundY,backgroundScale,backgroundScale,0,c_white,1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text_transformed(backgroundX + ((sprite_get_width(sBase)*backgroundScale)/2), backgroundY+35,"US Flag",1.5,1.5,0)
draw_sprite_ext(sPlayerUS,image_index,backgroundX + ((sprite_get_width(sBase)*backgroundScale)/2),backgroundY + ((sprite_get_width(sBase)*backgroundScale)/2),1.5,1.5,0,c_white,1)
draw_set_halign(fa_right)
draw_set_valign(fa_top)