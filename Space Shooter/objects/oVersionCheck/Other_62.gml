if ds_map_find_value(async_load,"id") == get {
	if ds_map_find_value(async_load,"status") == 0 {
		onl_ver=ds_map_find_value(async_load,"result")
		var ResultMap = json_decode(onl_ver);
		var list = ds_map_find_value(ResultMap, "default")
		
	} else {
		onl_ver=0
	}
}
