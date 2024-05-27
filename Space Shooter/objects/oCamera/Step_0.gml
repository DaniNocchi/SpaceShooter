x_to= view_width/2
y_to= view_height/2

x_to=clamp(x_to,0,room_width-view_width)
y_to=clamp(y_to,0,room_height-view_height)

x_to+=random_range(-shake_strenght,shake_strenght)
y_to+=random_range(-shake_strenght,shake_strenght)

var _cx = camera_get_view_x(view_camera[0])
var _cy = camera_get_view_y(view_camera[0])

var _nx = lerp(_cx,x_to,0.1)
var _ny = lerp(_cy,y_to,0.1)

camera_set_view_pos(view_camera[0],_nx,_ny)