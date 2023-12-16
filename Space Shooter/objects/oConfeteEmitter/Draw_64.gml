
draw_set_halign(fa_right)
if current_month=12 {
	if sign(daysleft) = 1 {
		draw_text_scribble(1275,700," [rainbow][shake]"+string(daysleft)+" days remaining to the dev's birthday!!!")
	} else if sign(daysleft) =0 {
		draw_text_scribble(1275,700,"[rainbow][wave]TODAY IS THE DEV'S BIRTHDAY!!!!!!!!!!!!!")
	} else if sign(daysleft) = -1 {
	}
}