function save_game() {
    var volstruct = {
        sou: global.soundsvolume,
        mus: global.musicvolume,
		deb: global.debugunlock,
		tran: global.translation
		
    }
    var _file = file_text_open_write("svs.dat")//svs = sound volume save
    var _string = json_stringify(volstruct)
    file_text_write_string(_file,_string)
    file_text_close(_file)
}


function load_game() {
    if (file_exists("svs.dat")) {
        var _file = file_text_open_read("svs.dat")
        var _json = file_text_read_string(_file)
        var volstruct = json_parse(_json)
        global.soundsvolume=volstruct.sou??30
        global.musicvolume=volstruct.mus??50
		global.debugunlock=volstruct[$ "deb"] ?? 0
		global.translation=volstruct[$ "tran"] ?? 1
        file_text_close(_file)
    }
}