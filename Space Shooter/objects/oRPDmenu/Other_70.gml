var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	ready = true;
	np_setpresence_more("Small image text", "Space Shooter", false);
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	// bruh
	// np_setpresence_buttons(0, "Kremlin", "https://kremlin.ru");
	// np_setpresence_buttons(1, "Russian Facebook", "https://vk.com/");
	// DISCORD_MAX_BUTTONS == 2, so only allowed IDs are 0 and 1.
	
	//np_setpresence() should ALWAYS come the last!!
	if room=Menu {	
		np_setpresence("Best score: "+string(global.bestscore1), "In the Main Menu", "logo", "");
	} else if room=Game {
		np_setpresence("Wave "+string(global.wave), "Playing the game", "logo", "");
	}
}