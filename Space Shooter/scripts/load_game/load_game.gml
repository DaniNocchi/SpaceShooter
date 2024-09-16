function save_game() { //save the specified variables from the game in a json file
var _SaveData = array_create(0)
    var _SaveInfo = {
        sou: global.soundsvolume,
        mus: global.musicvolume,
		deb: global.debugunlock,
		tran: global.translation,
		dth: global.deaths,
		skin: global.skin
    }
	array_push(_SaveData, _SaveInfo)
	
	
	// aqui eu ja n faço ideia doq rolou, o tutorial eh mt estranho, mas vou tentar dizer oq rolou
	var _string = json_stringify(_SaveData) // ele pega o array acima e transforma em json
	var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1) // ele cria um buffer (memoria temporaria), porque? n sei, mas cria mesmo assim
	buffer_write(_buffer, buffer_string, _string)  //aq ele enfia o json de cima no buffer
	buffer_save(_buffer, "svsa.dat") // ele manda as coisas q tao escritas no buffer pro arquivo de save
	buffer_delete(_buffer) //ele deleta o buffer, pq ele eh temporario
	show_debug_message("saved")
}

function load_game() { //load the specified variables from the file "svsa.dat"
	if !file_exists("svsa.dat") {
        global.soundsvolume=30
        global.musicvolume=50
		global.debugunlock= 0
		global.translation=1
		global.deaths=0
		global.skin=sPlayer
		if file_exists("svs.dat") {
			file_delete("svs.dat")
		}
		save_game()
	} else {
		var _buffer = buffer_load("svsa.dat")
		var _string = buffer_read( _buffer, buffer_string)
		buffer_delete(_buffer)
		//o string agr eh um json dnv
		var _loadData = json_parse(_string)
		
		with oStartUp	{
			while(array_length(_loadData) > 0) {
				var _loadEntity = array_pop(_loadData);
				global.soundsvolume = _loadEntity.sou
				global.musicvolume	 = _loadEntity.mus
				global.debugunlock	 = _loadEntity.deb
				global.translation		 = _loadEntity.tran
				global.deaths				 = _loadEntity.dth
				global.skin					 = asset_get_index(_loadEntity.skin)
				show_debug_message("Loaded")
				if global.soundsvolume = _loadEntity.sou { show_debug_message("it is... woking?") }
			}
		}
	}
}

function GetMusic() { //load the music variable that used to glitch idk why
		if file_exists("svsa.dat") {
		var _buffer = buffer_load("svsa.dat")
		var _string = buffer_read( _buffer, buffer_string)
		buffer_delete(_buffer)
		//o string agr eh um json dnv
		var _loadData = json_parse(_string)
		
		with oSliderMusic {
			while(array_length(_loadData) > 0) {
				var _loadEntity = array_pop(_loadData);
				_music = _loadEntity.mus
				show_debug_message("Loaded Music")
			}
		}
	}
}
function GetSounds() { //same for the sounds variable
		if file_exists("svsa.dat") {
		var _buffer = buffer_load("svsa.dat")
		var _string = buffer_read( _buffer, buffer_string)
		buffer_delete(_buffer)
		//o string agr eh um json dnv
		var _loadData = json_parse(_string)
		
		with oSliderSounds {
			while(array_length(_loadData) > 0) {
				var _loadEntity = array_pop(_loadData);
				_sounds = _loadEntity.sou
				show_debug_message("Loaded Sound")
			}
		}
	}
}

function first_time() { //fix a bug from the game, but actually i dont think it solves something
	global.bestscore2=0
}
