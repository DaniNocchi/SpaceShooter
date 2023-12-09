spd=0.05 //the speed that it will use to start wallking and slow down
hspd=0 //horizontal speed (dont touch)
vspd=0 //vertical speed (dont touch)
maxspd=3 //the max speed that it can achieve

//if i make an powerup that raise the speed of the player
//se how much times you multiplied from the original maxspd
//and multiply that number the spd too, like
//if i change the maxspd to 6, change the spd to 0.2 and goes 
//like that

gameovercol=1 //boolean to allow the alarm2 to work
debugmode=0
shotcol=1 //cooldown for the shoots
global.count=0 //how many meteors did you hit
hitcooldown=1 //cooldown to not die from spam kill
global.lives=3 //lives
move=1
rotation=1
wavelimit=25
global.wave=1
outblack_seq = layer_sequence_create("pause",0,0,seoutblack)
layer_sequence_destroy(outblack_seq)
allskip=0
dead=0
oldwave=1
//CONFIGS 
