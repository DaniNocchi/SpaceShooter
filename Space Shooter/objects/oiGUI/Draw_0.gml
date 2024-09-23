 for (var i = 0; i < array_length(global.SkinInventory); i++) {
    draw_sprite(global.SkinInventory[i], 0, _x + (_distance * i), _y);
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fButtons)
draw_text_transformed(room_width/2, 110,"SKIN INVENTORY",1.5,1.5,0)
