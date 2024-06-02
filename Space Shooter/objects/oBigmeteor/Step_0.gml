if (place_meeting(x, y, oBullet)) {
	//-----\\ destroy bullet
    var bulletInstance = instance_place(x, y, oBullet);
    if (bulletInstance != noone) {
        if (bulletInstance.playerBullet) {
            instance_destroy(bulletInstance);
        }
	}

	audio_play_sound(soBMstanding,1,0)
	if bmlive>1 {if !audio_is_playing(soBMstanding) {audio_play_sound(soBMstanding,1,0)}}
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
	audio_play_sound(soBMstanding,1,0)
	if bmlive>1 {if !audio_is_playing(soBMstanding) {audio_play_sound(soBMstanding,1,0)}}

	bmlive-=1
}
if (place_meeting(x, y, oShield)) {
	bmlive=0
}
if (place_meeting(x, y, oArea)) {
	if global.bdamage=1 {
		global.mactives-=1
		global.count += 3;
		if global.x2=1 {
			global.count+=3
		}
		instance_destroy()
		instance_create_layer(x,y,layer,oPointsbig)
	}
}












	//-----\\
speed=global.mspd
if bmlive<=0 {
	global.mactives-=1
	global.count += 3;
	if global.x2=1 {
		global.count+=3
	}
	instance_destroy()
	instance_create_layer(x,y,layer,oPointsbig)
	audio_play_sound(soDestroy,1,0)
}

if place_meeting(x,y,oDestroy) {
	instance_destroy() 
	global.mactives-=1
}
if global.mrot=1 {
	image_angle+=irandom_range(2,5)
}
if bmlive=3 {
	sprite_index=sMbig
} else if bmlive=2 {
	sprite_index=sMbigsmallbroke
} else if bmlive=1 {
	sprite_index=sMbigbigbroke
} 

