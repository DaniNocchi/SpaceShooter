
if mcooldown=1 {
	if global.mactives<global.mlimit {
		meteor=choose(1,2,2)
		mcooldown=0
		alarm[0]=room_speed*2
	} else {
		mcooldown=0
		alarm[0]=room_speed*2
	}
} 
if meteor=1 {
	instance_create_layer(x,y,"everything",oBigmeteor)
	meteor=0
}	
if meteor=2 {
	instance_create_layer(x,y,"everything",oSmallmeteor)
	meteor=0
}	