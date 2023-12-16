if (place_meeting(x, y, oBullet)) {
	//-----\\ destroy bullet
    var bulletInstance = instance_place(x, y, oBullet);
    if (bulletInstance != noone) {
        if (bulletInstance.playerBullet) {
            instance_destroy(bulletInstance);
        }
	}
	if !audio_is_playing(sBMstanding) {audio_play_sound(sBMstanding,1,0)}
	bmlive-=1
}
if (place_meeting(x, y, oBulletQuiet)) {
	//-----\\ destroy bullet
    var bulletInstanceQuiet = instance_place(x, y, oBulletQuiet);
    if (bulletInstanceQuiet != noone) {
        if (bulletInstanceQuiet.playerBullet) {
            instance_destroy(bulletInstanceQuiet);
        }
	}
	if !audio_is_playing(sBMstanding) {audio_play_sound(sBMstanding,1,0)}
	bmlive-=1
}
	
	
    //-----\\
if bmlive>0 { speed=irandom(global.mspd) }
if bmlive<=0 {
	global.mactives-=1
	global.count += 3;
	if global.x2=1 {
		global.count+=3
	}
	speed=0
	instance_destroy()
	instance_create_layer(x,y,layer,oPointsbig)
	if !audio_is_playing(sExplosion) {audio_play_sound(sExplosion,1,0)}
}

if place_meeting(x,y,oDestroy) {
	instance_destroy() 
	global.mactives-=1
}
image_angle+=irandom_range(2,5)

if bmlive=3 {
	sprite_index=sMbig
} else if bmlive=2 {
	sprite_index=sMbigsmallbroke
} else if bmlive=1 {
	sprite_index=sMbigbigbroke
} 

