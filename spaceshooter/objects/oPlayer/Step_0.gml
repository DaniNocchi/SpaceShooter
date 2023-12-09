#region inputs
if move=1 {
keyleft = keyboard_check(vk_left) or keyboard_check(ord("A"))
keyright = keyboard_check(vk_right) or keyboard_check(ord("D"))
keydown = keyboard_check(vk_down) or keyboard_check(ord("S"))
keyup = keyboard_check(vk_up) or keyboard_check(ord("W"))
keymbl = mouse_check_button(mb_left) or keyboard_check(vk_space)
}
#endregion
#region colisions
if place_meeting (x+hspd,y,oWall) {
	while !place_meeting(x+sign(hspd),y,oWall) {
		x+=sign(hspd)
	}
	hspd=0
}
if place_meeting (x,y+vspd,oWall) {
	while !place_meeting(x,y+sign(vspd),oWall) {
		y+=sign(vspd)
	}
	vspd=0
}
#endregion
#region walk
x+=hspd
y+=vspd

if keyleft=true {
	if hspd>-maxspd {
		hspd-=spd
	}
} else if keyleft=false {
	if hspd<0 {
		hspd+=spd
	}
}
//-----\\ RIGHT HSPD
if keyright=true {
	if hspd<maxspd {
		hspd+=spd
	}
} else if keyright=false {
	if hspd>0 {
		hspd-=spd
	}
}
//-----\\ UP VSPD
if keyup=true {
	if vspd>-maxspd {
		vspd-=spd
	}
} else if keyup=false {
	if vspd<0 {
		vspd+=spd
	}
}
//-----\\ DOWN VSPD
if keydown=true {
	if vspd<maxspd {
		vspd+=spd
	}
} else if keydown=false {
	if vspd>0 {
		vspd-=spd
	}
}
#endregion
#region observe the mouse
if rotation=1 {
	image_angle= point_direction(x,y,mouse_x,mouse_y)
}
#endregion
#region shots
if (shotcol == 1) {
    if (keymbl) {
        var bulletInstance = instance_create_layer(x, y,"everything",oBullet);
        bulletInstance.direction = point_direction(x, y, mouse_x, mouse_y);
        bulletInstance.speed = 8;
        bulletInstance.playerBullet = true;
        shotcol = 0;
        alarm[0] = room_speed * 0.3;
    }
}
#endregion
#region lifes
if hitcooldown=1 {
	if place_meeting(x,y,oBigmeteor) or place_meeting(x,y,oSmallmeteor) { 
		sprite_index=sPhit
		alarm[1]=room_speed*3
		global.lives-=1
		hitcooldown=0
		audio_play_sound(sHit,1,0)
	}
}
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
	if layer_sequence_is_finished(outblack_seq) {
		room=Menu
		rotation=1
		move=1
		global.lives=3
		x=704
		y=352
		dead=0
		gameovercol=1
		layer_sequence_destroy(outblack_seq)	
	}
}
#endregion
#region debug mode
if keyboard_check_released(vk_alt) {if debugmode=0 {debugmode=1} else {debugmode=0}}
#endregion
#region waves
if global.count>wavelimit {
	wavelimit+=25
	global.mlimit+=5
	global.wave+=1
	global.mspd+=0.50
}
#endregion
#region random power spawn
if oldwave == global.wave {} else {
	global.hab3 = choose(1,2)
	oldwave = global.wave
	if global.hab3 = 1 && !instance_exists(oHabSpeed) {
		instance_create_layer(irandom(1366),irandom(768),layer,oHabSpeed)
	
	} else if global.hab3 = 2 && !instance_exists(oHabLife) {
		instance_create_layer(irandom(1366),irandom(768),layer,oHabLife)
	
	} //put more powers
}
#endregion

#region habilities
