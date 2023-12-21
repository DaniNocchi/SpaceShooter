var max_ = irandom(1)
if os_device=os_android {
for (cooldown = 0; cooldown < max_; cooldown += 1){ 
	if global.birthday=0 {
			instance_create_layer(random_range(925,1365),650,"snow",oConfete)
	}
}
}
daysleft = 19 - current_day 
if current_month=12 { if current_day<=19 { global.birthday=0 } else { global.birthday=1 }} else { global.birthday=1 }