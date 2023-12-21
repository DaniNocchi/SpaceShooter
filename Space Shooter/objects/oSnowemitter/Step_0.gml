var max_ = irandom(1)
if os_device=os_android {
for (cooldown = 0; cooldown < max_; cooldown += 1){ 
	instance_create_layer(irandom(280),210,"snow",oSnow)
}
}