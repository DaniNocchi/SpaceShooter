var lifes;
lifes = (global.lives/max_lives)*100;

var Reload;
Reload = (global.breload/3)*100;
draw_healthbar(x-60,y-45,x+60,y-55,lifes,c_dkgray,c_red,c_red,0,true,false)
if global.bombs>0 {
	draw_healthbar(x-60,y-85,x+60,y-95,Reload,c_dkgray,c_red,c_lime,0,true,false)
}