// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_is_alphanumeric(str){
    var len = string_length(str);
    for (var i = 1; i <= len; i++) {
        var char = string_char_at(str, i);
        if !((char >= "a" && char <= "z") || (char >= "A" && char <= "Z") || (char >= "0" && char <= "9")) {
            return false;
		}
    }
    return true;
}