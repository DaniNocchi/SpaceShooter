get = http_get("https://pastebin.com/raw/BEsrV61L")
if ds_map_find_value(async_load, "id") == get
{
    if ds_map_find_value(async_load, "status") == 0
    {
		antibug=1
		getstatus=ds_map_find_value(async_load, "status")
		getresult=ds_map_find_value(async_load, "result")
		getid=ds_map_find_value(async_load, "id")
		geturl=ds_map_find_value(async_load, "url")
		
        versionNumber = ds_map_find_value(async_load, "result");
    }
    else
    {
        versionNumber = "null";
    }
}
