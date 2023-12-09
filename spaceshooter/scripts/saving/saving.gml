function save_game() {
	var habstruct = {
		hab1: global.hab1,
		hab2: global.hab2
	}
	var _file = file_text_open_write("hss.dat")//hss = hability save system
	var _string = json_stringify(habstruct)
	file_text_write_string(_file,_string)
	file_text_close(_file)
}

function load_game() {
	if (file_exists("hss.dat")) {
		var _file = file_text_open_read("hss.dat")
		var _json = file_text_read_string(_file)
		var habstruct = json_parse(_json)
		global.hab1=habstruct.hab1
		global.hab2=habstruct.hab2
		file_text_close(_file)
	}
}
		