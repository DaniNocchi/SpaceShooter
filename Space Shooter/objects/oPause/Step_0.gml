if global.pause=0 {
	instance_activate_all()
	if room=Game { global.menudeac=1 }
	layer_sequence_destroy(pause_seq)
	layer_set_visible("pauseobj",false)
	if (keyboard_check_released(vk_escape)) {
        global.pause = 1;
	}

} else if global.pause=1 && room=Game {
	if global.options=0 && global.changelog=0{
		global.menudeac=0
	} 
	if !layer_sequence_exists("pause",pause_seq) {
		pause_seq = layer_sequence_create("pause",0,0,sePause)
	}
	instance_deactivate_layer("everything")
	instance_deactivate_layer("player")
	layer_set_visible("pauseobj",true)
    if (keyboard_check_released(vk_escape)) {
		global.pause = 0
		
    }
}