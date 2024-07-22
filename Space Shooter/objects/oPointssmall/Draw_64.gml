draw_set_font(fPointsText)
draw_set_alpha(alpha)
if global.x2=0 {
	draw_text_scribble(x,y,"[rainbow][wave]+1")
}
if global.x2=1 {
	draw_text_scribble(x,y,"[rainbow][wave][shake]+2")
}
draw_set_alpha(1)	