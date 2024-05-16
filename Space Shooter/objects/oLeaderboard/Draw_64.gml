draw_set_halign(fa_left)
draw_set_font(fDefault)
scribble_anim_wave(1, 75, 0.2)
pos=gmda_getPlayerpos(1)
bestscore=gmda_getBestscore(1)
playername=gmda_getPlayername()
playerid=gmda_getPlayerid()
status=gmda_status()
globalscores=gmda_getTabledata(gmda_globaltable,1)

#region if its not conected yet
draw_set_font(fScoreboard3)
if status=0 {
	if room=Menu {
	instance_deactivate_layer("Instance_1")
	draw_set_halign(fa_middle)
	draw_text_scribble(140,370,"[SHAKE]CONNECTING...")
	}
#endregion
#region else if its connected ------------------------------------
} else {
if room=Menu {
	instance_activate_layer("Instance_1")
	var tablesize=ds_map_size(globalscores)
	var rowinfo;
	for (var i=1;i<=tablesize;i++) {
		rowinfo=ds_map_find_value(globalscores,string(i))
		var name=ds_map_find_value(rowinfo,"name")
		var xscore=ds_map_find_value(rowinfo,"score")
	#region DRAW THE LEADERBOAD----------------------------------------- 
		draw_set_font(fScoreboard1)
		draw_set_halign(fa_middle)
		draw_text(140,225,"SCOREBOARD")	
		draw_set_font(fScoreboard2)
		draw_set_halign(fa_left)
		draw_text(15,275,"NAME")
		draw_set_halign(fa_right)
		draw_text(270,275,"SCORE")
		draw_set_font(fScoreboard3)
		draw_set_halign(fa_left)
	  // --------------------------------------------------
		draw_text(15,280+ 25*6,"-------------------------------")
		draw_text(15,280+ 25*7,"#"+string(pos)+" "+string(playername))
		draw_set_halign(fa_right)	
		draw_text(270,280+ 25*7,string(bestscore))

	
		#region if youre a looser----------------------------------------
		if i>=2 {
			draw_set_halign(fa_left)
			draw_text(15,280+ 25*i,"#"+string(i)+" "+string(name))
			draw_set_halign(fa_right)
			draw_text(270,280+ 25*i,string(xscore))
			#endregion
		
}
		#region if you are the number 1----------------------------------------------
		if i=1 {
			draw_set_halign(fa_left) 
			draw_text_scribble(15,280+ 25*i,"[wave][rainbow]#"+string(i)+" "+string(name)+" [/rainbow][sCrown]")
			draw_set_halign(fa_right)
			draw_text_scribble(270,280+ 25*i,"[rainbow]"+string(xscore))
		}
	} 
} else {} 
}
		#endregion
	#endregion
#endregion
if room=Menu {
draw_set_halign(fa_left)
draw_text_scribble(5,745,"[wave][rainbow]Version 1.0.4 (BETA)")
draw_set_halign(fa_right)
draw_text_scribble(1361,745,"[wave]By DaniNocchi, Thank you for playing!!!")
}