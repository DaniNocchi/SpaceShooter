if (place_meeting(x, y, oBullet)) {
    var bulletInstance = instance_place(x, y, oBullet);
    if (bulletInstance != noone) {
        if (bulletInstance.playerBullet) {
            instance_destroy(bulletInstance);
        }
	}
	
	if !audio_is_playing(sExplosion) {audio_play_sound(sExplosion,1,0)}
	instance_create_layer(x,y,layer,oPointssmall)
	instance_destroy()
    global.mactives -= 1;
    global.count += 1;
		if global.x2=1 {
		global.count+=1
	}
}
if (place_meeting(x, y, oBulletQuiet)) {
    var bulletInstanceQuiet = instance_place(x, y, oBulletQuiet);
    if (bulletInstanceQuiet != noone) {
        if (bulletInstanceQuiet.playerBullet) {
            instance_destroy(bulletInstanceQuiet);
        }
	}
	if !audio_is_playing(sExplosion) {audio_play_sound(sExplosion,1,0)}
	instance_create_layer(x,y,layer,oPointssmall)
	instance_destroy()
    global.mactives -= 1;
    global.count += 1;
		if global.x2=1 {
		global.count+=1
	}
}
if place_meeting(x,y,oDestroy) {
	instance_destroy()
	global.mactives-=1
}
if place_meeting(x,y,oShield) {
	if !audio_is_playing(sExplosion) {audio_play_sound(sExplosion,1,0)}
	instance_create_layer(x,y,layer,oPointssmall)
	instance_destroy()
    global.mactives -= 1;
    global.count += 1;
	if global.x2=1 {
		global.count+=1
	}
}
if place_meeting(x,y,oArea) {
	if global.bdamage=1 {
		if !audio_is_playing(sExplosion) {audio_play_sound(sExplosion,1,0)}
		instance_create_layer(x,y,layer,oPointssmall)
		instance_destroy()
	    global.mactives -= 1;
	    global.count += 1;
		if global.x2=1 {
			global.count+=1
		}
	}
}

if global.mrot=1 {
	image_angle+=irandom_range(2,5)
}
if global.mspd>0 {
	speed=global.mspd+2
}