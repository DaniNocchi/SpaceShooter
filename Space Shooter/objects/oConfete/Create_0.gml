image_angle=random(365)
xspeed=choose(-1,0,1)
_sprite = choose(1,2,3,4)
if _sprite = 1 {
	sprite_index=sConfete1
} else if _sprite = 2 {
	sprite_index=sConfete2
} else if _sprite = 3 {
	sprite_index=sConfete3
} else if _sprite = 4 {
	sprite_index=sConfete4
}
if place_meeting(x,y,oDestroy) { instance_destroy() } 