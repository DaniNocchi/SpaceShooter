if (place_meeting(x, y, oBullet)) {
    var bulletInstance = instance_place(x, y, oBullet);
    if (bulletInstance != noone) {
        if (bulletInstance.playerBullet) {
            instance_destroy(bulletInstance);
        }
	}
	audio_play_sound(sExplosion,1,0)
	instance_create_layer(x,y,layer,oPointssmall)
	instance_destroy()
    global.mactives -= 1;
    global.count += 1;
}
if place_meeting(x,y,oDestroy) {
	instance_destroy()
	global.mactives-=1
}
image_angle+=irandom_range(2,5)
speed=irandom(global.mspd+2)
