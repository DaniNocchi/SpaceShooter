	if live_call() return live_result
	
if place_meeting(x,y,oMouse) && global.menudeac=0 {
	if boolmouse=0 {
		boolmouse=1
		audio_play_sound(soSelect,1,0)
		sprite_index=sButtonDark
	}
	if mouse_check_button_released(mb_left) && global.menudeac=0 {
		changeNameProtocol = 1
		keyboard_string = ""
		escx=0.6
		escy=0.4
		GUIalpha = 0
		instance_activate_layer("Changename")
		with oBack {
			escx=0.8
			escy=0.8
		}
		with oSubmit {
			escx=0.8
			escy=0.8
		}
		audio_play_sound(soInteract,1,0)
		global.menudeac= 1

	} 
} else {
	sprite_index=sButton
	boolmouse=0
}

GUIalpha = lerp(GUIalpha,1,0.2)



if changeNameProtocol = 1 {
	if boolLine=0 {
		alarm[0] = room_speed*0.75
		boolLine=1
	}
	if string_length(keyboard_string) > 15 {
		keyboard_string = string_copy(keyboard_string, 1, 15);
	}
	newName = keyboard_string
	
	if keyboard_check_released(vk_enter) {
		if string_is_alphanumeric(newName)  {
			changeNameProtocol=0
			global.menudeac = 0
			instance_deactivate_layer("Changename")
			gmda_setNewname(newName)
		}
	} 
	
	if keyboard_check_released(vk_escape) {
		changeNameProtocol = 0
		global.menudeac = 0
		instance_deactivate_layer("Changename")
	}
}



if NameExists = 1 {
	if TimerExists = 0 {
		alarm[1]=room_speed*3
		if AlphaDone > 0 AlphaDone = 0
		TimerExists = 1 
		AlphaExists = 1
	}
			//-----------\\
	if TimerExists = 2 {
		if AlphaExists > 0 {
			AlphaExists-=0.01
		} else {
			NameExists=0
			TimerExists = 0
		}
	}
}
if NameDone = 1 {
		if TimerDone = 0 {
		alarm[2]=room_speed*3
		if AlphaExists > 0 AlphaExists = 0
		TimerDone = 1 
		AlphaDone = 1
	}
			//-----------\\
	if TimerDone = 2 {
		if AlphaDone > 0 {
			AlphaDone-=0.01
		} else {
			NameDone=0
			TimerDone=0
		}
	}
}