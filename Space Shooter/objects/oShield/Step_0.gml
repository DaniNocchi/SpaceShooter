x=oPlayer.x
y=oPlayer.y
image_angle= point_direction(x,y,mouse_x,mouse_y)
if global.destroyshield=1 {
	global.destroyshield=0
	instance_destroy()
}