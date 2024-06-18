//  Responses from the server related to player

function scrHTTP_player(response,valueref){
	
	switch(response){
		
///////////////////// CHANGING NAME //////////////////
    case gmd_resp_nameupdated: //Name updated
	if global.translation=1 {
		show_message_async("The name has been changed to: '"+string(valueref) + "' Restart the game to update!");
	} else if global.translation=2 {
		show_message_async("O nome mudou para: '"+string(valueref) + "' Reinicie o jogo para atualizar!");
	} else if global.translation=3 {
		show_message_async("El nombre ha sido cambiado a: '"+string(valueref) + "' ¡reinicia el juego para actualizar!");
	}
    break;
    case gmd_resp_namenotavailable: //Name has already been taken
	if global.translation=1 {
		show_message_async("The name "+string(valueref)+" has already been taken");
	} else if global.translation=2 {
		show_message_async("O nome "+string(valueref)+" já está em uso, use outro nome!");
	} else if global.translation=3 {
		show_message_async("El nombre "+string(valueref)+" ya ha sido tomado");
	}
    break;
    case gmd_resp_invalidformat_name: //Invalid format(name)
	if global.translation=1 {
		show_message_async("You entered character(s) that aren't supported, remove them from your name!");
	} else if global.translation=2 {
		show_message_async("Você inseriu caracteres que não são suportados, remova-os do seu nome!");
	} else if global.translation=3 {
		show_message_async("Ingresaste caracteres que no son compatibles, ¡elimínalos de tu nombre!");
	}
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
