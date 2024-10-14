x=oPlayer.x
y=oPlayer.y
if global.os=0 { image_angle= point_direction(x,y,mouse_x,mouse_y) } else { image_angle=oPlayer.mobileAngle }
if global.destroyshield=1 {
	global.destroyshield=0
	instance_destroy()
}