if buttonsIndex < array_length(global.SkinInventory) {
    instance_create_layer(_x + (_distance * buttonsIndex), _y + sprite_get_height(global.SkinInventory[buttonsIndex]) + 15, "buttons", oSelect, {
        skin: global.SkinInventory[buttonsIndex]
	})
	buttonsIndex++
}
if keyboard_check_released(vk_escape) {
	save_game()
	beauty_transition(rMenu,c_white)
}


