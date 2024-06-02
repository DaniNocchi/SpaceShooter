enum states {
    OUT,
    IN
}
state = states.OUT

spr = sTransition
sprw = sprite_get_width(spr)
sprh = sprite_get_height(spr)

xmax = room_width div sprw
ymax = room_height div sprh
imax = sprite_get_number(spr)

speedspriteinc = sprite_get_speed(spr)/room_speed
speedsprite = 0



//changed in the script
col = noone
TargetRoom = noone
