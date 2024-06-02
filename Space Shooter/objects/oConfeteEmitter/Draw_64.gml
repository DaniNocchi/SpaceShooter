
draw_set_halign(fa_right)
if birthday() = 1 {
	if daysleft() = 1 {
		draw_text_scribble(1275,700," [rainbow][shake]"+string(daysleft)+" days remaining to the dev's birthday!!!")
	} else if daysleft() = 0 {
		draw_text_scribble(1275,700,"[rainbow][wave]TODAY IS THE DEV'S BIRTHDAY!!!!!!!!!!!!!")
	}
}