	global.discord_initialized = true;
	ready = true;
	np_setpresence_more("Small image text", "Space Shooter", false);
if room=Menu {	
		np_setpresence("Best score: "+string(global.bestscore2), "In the Main Menu", "logo", "");
	} else if room=Game {
		np_setpresence("Wave "+string(global.wave), "Playing the game", "logo", "");
		
	}

/// @description Insert description here
// You can write your code in this editor
