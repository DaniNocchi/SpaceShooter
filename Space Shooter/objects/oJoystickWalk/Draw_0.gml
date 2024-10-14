if global.os = 1 {
	#region Creating Variables
	var _x1 = 224
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
			if _x2/ _spriteSize != 0 { oPlayer.hspd=lerp(oPlayer.hspd,(_x2 / _spriteSize) * oPlayer.maxspd,oPlayer.spd) }
			if _y2/ _spriteSize != 0 { oPlayer.vspd= lerp(oPlayer.vspd,(_y2 / _spriteSize) * oPlayer.maxspd,oPlayer.spd)}
			if using = 0 { oPlayer.hspd= lerp(oPlayer.hspd,0,oPlayer.spd) }
			if using = 0 { oPlayer.vspd= lerp(oPlayer.vspd,0,oPlayer.spd) }
		}
		#endregion
}