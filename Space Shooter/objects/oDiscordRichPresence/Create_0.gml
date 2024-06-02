ready = false;
alarm[0] = room_speed * 5;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}
global.bestscore2=0