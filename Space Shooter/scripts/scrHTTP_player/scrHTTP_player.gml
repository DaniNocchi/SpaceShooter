//  Responses from the server related to player

function scrHTTP_player(response,valueref){
	
	switch(response){
		
///////////////////// CHANGING NAME //////////////////
    case gmd_resp_nameupdated: //Name updated
	oChangeName.NameDone = 1
    break;
    case gmd_resp_namenotavailable: //Name has already been taken
	oChangeName.NameExists = 1
    break;
    case gmd_resp_invalidformat_name: //Invalid format(name)
    break;

///////////////// SUBMITTING SCORE ////////////////
	case gmd_resp_scoresubmitted: //Score submitted for the first time
	break;
	case gmd_resp_scoreupdated: //Score updated
	break;
	case gmd_resp_nothigherscore: //Score is not higher than the current one
	break;
	case gmd_resp_invalidformat_score: //Invalid format(score or extra fields)
	break;


//////////// EXTRA //////////////
    case gmd_resp_newplayer: //Player generated        
	if global.translation=1 {
		show_message_async("Welcome to the game, change your name in 'Change Name'!");
	} else if global.translation=2 {
		show_message_async("Bem vindo ao jogo, mude seu nome em 'Mudar Nome'!");
	} else if global.translation=3 {
		show_message_async("Bienvenido al juego, cambia tu nombre en 'Cambiar Nombre'!");
	}
	break;

    default: //Unknown Error        
    break;
    }
}
