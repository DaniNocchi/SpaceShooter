if global.os = 1 {
	#region Creating Variables
	var _x1 = 1120
	var _y1 = 544
	var _scale = 0.75
	var _sprite=sJoystick
	var _color = c_white
	var _areaAlpha = 0.5
	var spd = 0
	var dir = 0
	var _mousex = device_mouse_x_to_gui(0);
	var _mousey = device_mouse_y_to_gui(0);
	var _spriteSize = (sprite_get_width(_sprite)*_scale)/2
	var mouseAbove = point_in_circle(_mousex,_mousey,_x1,_y1, _spriteSize)
	var mouseClick = mouse_check_button(mb_left)
	#endregion
	#region making the joystick work
	if mouseAbove or using = true { 
		if mouseClick {
			using = true
			spd = min(point_distance(_x1,_y1,_mousex,_mousey),_spriteSize)
			dir = point_direction(_x1,_y1,_mousex,_mousey)
		}
	}
	if !mouseClick {
		using = false 
		spd = 0
	}

	var _x2 =  lengthdir_x(spd,dir)	
	var _y2 =  lengthdir_y(spd,dir)	
	draw_circle(_x1,_y1,_spriteSize,true)
	draw_sprite_ext(_sprite,0,_x1,_y1,_scale,_scale,0,_color,_areaAlpha) //drawning the area
	draw_sprite_ext(_sprite,0,_x1+_x2,_y1+_y2,_scale/4,_scale/4,0,_color,1) //drawning the small ball
	#endregion
	#region making the object walk
		if instance_exists(oPlayer) {
			draw_set_font(fDefault)
			draw_text(40,40, using)
			if using = 1 { oPlayer.mobileAngle =  point_direction(0,0,_x2/ _spriteSize,_y2/ _spriteSize) }
			if using = 1 { oPlayer.mobileShoot=1 } else { oPlayer.mobileShoot=0 }
		}
		#endregion
}