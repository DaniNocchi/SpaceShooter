for (var yy = 0; yy <= ymax; ++yy) {
    for (var xx = 0; xx <= xmax; ++xx) {
        var _index;
        if (state == states.OUT) {
            _index = xx + yy;  // Cálculo do índice na diagonal invertida para OUT
        } else {
            _index = (xmax - xx) + (ymax - yy)  // Cálculo do índice na diagonal para IN
        }
        draw_sprite_ext(spr, min(max(0, speedsprite - _index), imax - 1), xx * sprw, yy * sprh, 1, 1, 0, col, 1);
    }
}