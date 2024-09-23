for (var i = 0; i < array_length(global.SkinInventory); i++) {
    instance_create_layer(_x + (_distance * i), _y + sprite_get_height(global.SkinInventory[i]) + 15, "buttons", oSelect, {
        skin: global.SkinInventory[i]
    });
}