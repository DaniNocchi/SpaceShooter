if live_call() return live_result


#region inputs
if move=1 {
	keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"))
	keyright = keyboard_check(vk_right) or keyboard_check(ord("D"))
	keydown = keyboard_check(vk_down) or keyboard_check(ord("S"))
	keyup = keyboard_check(vk_up) or keyboard_check(ord("W"))
	keymbl = mouse_check_button(mb_left) or keyboard_check(vk_space)
	keymbr = mouse_check_button_released(mb_right) or keyboard_check_released(vk_control)
}
#endregion
#region walk
if keyright { hspd= lerp(hspd,maxspd,spd) }
if keyleft { hspd= lerp(hspd,-maxspd,spd) }
if !keyright and !keyleft { hspd= lerp(hspd,0,spd) }

if keydown { vspd= lerp(vspd,maxspd,spd) }
if keyup { vspd= lerp(vspd,-maxspd,spd) }
if !keyup and !keydown { vspd= lerp(vspd,0,spd) }
	
hspd = clamp(hspd,-maxspd,maxspd)
vspd = clamp(vspd,-maxspd,maxspd)

x += hspd
y += vspd
#endregion
#region observe the mouse
if rotation=1 {
	image_angle= point_direction(x,y,mouse_x,mouse_y)
}
#endregion

#region shot (normal)
if (shotcol == 1) {
    if (keymbl) {
		audio_play_sound(soShoot,1,0)
        var bulletInstance = instance_create_layer(x, y,"everything",oBullet);
        bulletInstance.direction = point_direction(x, y, mouse_x, mouse_y);
        bulletInstance.speed = 8;
        bulletInstance.playerBullet = true;
        shotcol = 0;
        alarm[0] = room_speed * shotfre;
		start_screen_shake(0.45,12)
	}
}
#endregion
#region shot (three rows)
if (keymbl) {
	if trows=1 {
		if (shotcolquiet == 1) {
			start_screen_shake(0.55,17)
			var bulletInstancequiet = instance_create_layer(x, y,"everything",oBulletQuiet);
	        bulletInstancequiet.direction = point_direction(x, y, mouse_x+45, mouse_y+45);
	        bulletInstancequiet.speed = 8;
	        bulletInstancequiet.playerBullet = true;
			alarm[6] = room_speed * shotfre;
			
			var bulletInstancequiet = instance_create_layer(x, y,"everything",oBulletQuiet);
	        bulletInstancequiet.direction = point_direction(x, y, mouse_x-45, mouse_y-45);
	        bulletInstancequiet.speed = 8;
	        bulletInstancequiet.playerBullet = true;
			shotcolquiet = 0 
			alarm[6] = room_speed * shotfre;
		}
	}
}
#endregion
#region shot (bombs)
if global.bombs>0 {
	if (shotcolbomb == 1) {
		if (keymbr) {
		    instance_create_layer(mouse_x,mouse_y,"everything",oBomb)
		    shotcolbomb = 0;
			alarm[5] = room_speed * 3;
			global.breload=0
		}
	} 
}
#endregion

#region damage (meteors)
if hitcooldown=1 {
	if place_meeting(x,y,oBigmeteor) or place_meeting(x,y,oSmallmeteor) {
		damaged=1
		global.lives-=1 
		audio_play_sound(soHit,1,0)
	}
}
#endregion
#region damage (wall)
if hitcooldown=1 {
	if place_meeting(x,y,oWall) { 
		damaged=1
		global.lives-=1 
		audio_play_sound(soHit,1,0)
	} 
}
if place_meeting(x,y,oWall) {outwarn=1} else {outwarn=0}
#endregion
#region gameover
if global.lives<=0 {
	gmda_submit(1,global.count)
	instance_deactivate_all(true)
	rotation=0
	hspd=0
	vspd=0
	move=0
	if gameovercol=1 { 
		alarm[2]=room_speed*1
		gameovercol=0
	}
}
#endregion

#region debug mode
if keyboard_check_released(vk_alt) {
	if global.debugunlock = true {
		if debugmode=0 {
			debugmode=1
		} else {
			debugmode=0
		}
	}
}

#endregion

#region waves
if global.count>=wavelimit {
	wavelimit+=25
	global.mlimit+=5
	global.wave+=1
}
#endregion

#region random hability spawner system
if oldwave != global.wave {
	var _habwillhappen = choose(1,2) //PUT HERE THE NUMBER 2 TOO AFTER TESTING EVERYTHING
	if _habwillhappen = 1 {
		
	habrandom = choose(1,1,1,2,3,3,3,3,4,4,5,5,5,6,6,7,7,7) //1 speed, 2 2x points, 3 speed shot, 4 trows, 5 shield, 6 time freeze, 7 bombs
	//habrandom = 7 //1 speed, 2 2x points, 3 speed shot, 4 trows, 5 shield, 6 time freeze, 7 bombs
	
	_habwillhappen=0
	} else if _habwillhappen = 2 {
		_habwillhappen=0
		habrandom=0
	}
	oldwave = global.wave
}
#endregion
#region habilities lil' square thingy that spawn yk
if habrandom = 1 && !instance_exists(oHabSpeed) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabSpeed)
	habrandom=0
} else if habrandom = 2 && !instance_exists(oHab2x) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHab2x)
	habrandom=0
} else if habrandom = 3 && !instance_exists(oHabSpeedShoot) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabSpeedShoot)
	habrandom=0
} else if habrandom = 4 && !instance_exists(oHabTRows) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabTRows)
	habrandom=0
} else if habrandom = 5 && !instance_exists(oHabShield) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabShield)
	habrandom=0
} else if habrandom = 6 && !instance_exists(oHabFreeze) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabFreeze)
	habrandom=0
} else if habrandom = 7 && !instance_exists(oHabBombs) {
	var _hab3 = instance_create_layer(irandom(1350)+16,irandom(728+40),"everything",oHabBombs)
	habrandom=0
}//put more powers
#endregion
#region habilities
//hab 3
//speed
if global.hab3=1 {
	spd=0.1
	maxspd=6
	alarm[3]=room_speed*10
	global.hab3disp=1
	global.hab3=0
}
//2x
if global.hab3=2 {
	global.x2=1
	global.hab3=0
	global.hab3disp=2
	alarm[3]=room_speed*10
}
//more frequent bullets
if global.hab3=3 {
	shotfre=0.1 
	alarm[3]=room_speed*10
	global.hab3disp=3
	global.hab3=0
}
//TRows
if global.hab3=4 {
	trows = 1
	alarm[3]=room_speed*10
	global.hab3disp=4
	global.hab3=0
}
//Shield
if global.hab3=5 {
	shield=1
	var shieldInstance = instance_create_layer(x, y,"everything",oShield);
	alarm[3]=room_speed*15
	global.hab3disp=5
	global.hab3=0
}
//Pause
if global.hab3=6 {
	global.mspd=0
	global.mrot=0
	alarm[3]=room_speed*10
	global.hab3disp=6
	global.hab3=0
}
//Bombs
if global.hab3=7 {
	global.bombs+=5
	global.hab3disp=7
	global.hab3=0
	hab3dispbomb=1
}
#endregion

#region damage system
if damaged=1 {
	hitcooldown=0
	if DamageBoolean=1{
		if repeated < 12 {
			repeated++
			alarm[1] = room_speed*0.25;
			DamageBoolean=0
			damageSkin= !damageSkin
			if damageSkin= 0 { image_alpha=0 } else { image_alpha=1 }
			if sprite_index = sEmpty { sprite_index = global.skin } 
		} else {
			sprite_index= global.skin
			repeated=0
			damaged=0
			hitcooldown=1
			image_alpha=1
		}
	}
}
#endregion
global.skin=sPlayer

#region bug fixes
if hab3dispbomb=1 && global.bombs=0 {
	global.hab3disp=0
	hab3dispbomb=0
}

if global.bombs>0 {
	if shotcol=0 {
		if boolreload=0 {
			if global.breload<=3 {
				alarm[4] = room_speed*0.5;
				boolreload=1
			}
		}
	}
}
#endregion

var PartWalkDir= 180
PartWalkDir = image_angle + 180  mod 360 
part_system_position(WalkParticle, oPlayer.x, oPlayer.y)
part_type_orientation(0,PartWalkDir,PartWalkDir,0,0,true)
part_type_direction(0,PartWalkDir,PartWalkDir,0,0)
part_type_speed(0,10,5,0,0)
part_emitter_stream(WalkParticle,0,0,1)
