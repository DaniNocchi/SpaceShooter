
///////////// LOAD DATA //////////////
if global.delay<=0{
	
if gmda_status(){
gmda_loadgamesave(); //Load data
}else{
show_message_async("Error to establish connection to server")	
}

global.delay=40; //Make a small delay to regulate submit span
}




	
