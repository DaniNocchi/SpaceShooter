spd=0.05 //the speed that it will use to start wallking and slow down
hspd=0 //horizontal speed (dont touch)
vspd=0 //vertical speed (dont touch)
maxspd=3 //the max speed that it can achieve

/*
if i make an powerup that raise the speed of the player
se how much times you multiplied from the original maxspd
and multiply that number the spd too, like
if i change the maxspd to 6, change the spd to 0.1 and goes 
like that
*/

outwarn=0 //actives the message that appear when youre out
gameovercol=1 //boolean to allow the alarm2 to work
debugmode=0
shotcol=1 //cooldown for the shoots
shotcolbomb= 1 //same thing for the bombs
shotcolquiet=1
shotfre=0.3 //shoots frequency
global.count=0 //how many meteors did you hit
hitcooldown=1 //cooldown to not die from spam kill
global.lives=3 //lives, isnt this clear???
move=1 //if its alowed to walk, no shit sherlock
rotation=1 //if its alowed to rotate
wavelimit=25 // the amount of points you need to go to another wave
global.wave=1 //wich wave we are (idk man sorry)
oldwave=1 //check if the wave changed
global.hab3=0 //hability slot 3
trows = 0 //if you have the trows hab on
global.x2=0 //if you have the 2x hab on
global.hab3disp=0 //displays on oHab3 wich hab youre now
global.destroyshield=0 //destroys the shield from the hability after the 10 sec
global.mspd=2 //meteor speed
global.mrot=1 //rotation of the meteor, if it rotates or not
global.bombs=0 //how many bombs you still have
hab3dispbomb=0 //bug fix that the bomb icon would just be there even after the effect
habrandom=0  //the random powerup that will appear
global.bdamage=0 //the bomb's damage bool
boolreload=0 //i actually dont know what this do
shield=0 //if you have the shield? i guess??
damaged=0//active the damaged protocol
repeated=0
DamageBoolean=1
damageSkin=0
global.PartWalkToggle = 0
WalkParticle = part_system_create(partWalking)
WalkIndex = part_emitter_create(WalkParticle)
WalkBool = 0

skinIndex = 1
skinIndexTimer = 0 

mobileShoot=0
mobileAngle=0