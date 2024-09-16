_music = 0
GetMusic()
value = _music/100
color = c_white
boolean=false


draw_slider = function() {
	if global.options=1 {
		var _xbolinha = x + (sprite_width * value)
		draw_self()
		draw_sprite_part_ext(sprite_index,0,0,0,sprite_width*value,sprite_height, x, y - sprite_yoffset, 1, 1, c_grey, 1)
		draw_sprite_ext(sSliderBolinha, 0, _xbolinha, y, 1, 1, 0, color, 1)
		draw_text(15,45,string(_music))
	}
}
change_value = function() {	
	var _xbolinha = x + (sprite_width * value)
	var _ybolinha = y
	var margem = 5
	if global.options=1 {
		var _mouseabove = point_in_rectangle(mouse_x, mouse_y, bbox_left - margem, bbox_top - margem, bbox_right + margem, bbox_bottom + margem)
		var _mouseclick = mouse_check_button(mb_left)
		if (_mouseabove) {
			color = c_gray
			if (_mouseclick) {
				boolean=true
				value= (mouse_x - x) / sprite_width
				value = clamp (value, 0, 1)
			}
		} else { 
			color = c_white
		}	
	}
}
