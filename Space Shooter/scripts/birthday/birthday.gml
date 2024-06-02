// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function birthday(){
	if current_month=12 {
		if current_day<=19 {
			return 1;
		} else { 
			return 0;
		}
	} else {
		return 0;
	}
}

function daysleft() {
	if birthday() = 1 {
		var _daysleft = 19 - current_day 
		return sign(_daysleft);
	}
}