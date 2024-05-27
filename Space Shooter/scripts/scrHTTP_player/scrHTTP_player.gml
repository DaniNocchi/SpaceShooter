//  Responses from the server related to player

function scrHTTP_player(response,valueref){
	
	switch(response){
		
///////////////////// CHANGING NAME //////////////////
    case gmd_resp_nameupdated: //Name updated
    show_message_async("The name has been changed to: '"+string(valueref) + "' Restart the game to update!");
    break;
    case gmd_resp_namenotavailable: //Name has already been taken
    show_message_async("The name "+string(valueref)+" has already been taken");
    break;
    case gmd_resp_invalidformat_name: //Invalid format(name)
    show_message_async("You entered character(s) that aren't supported, remove them from your name!");
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
    show_message_async("New player generated, change your name in 'Change Name'!");           
    break;

    default: //Unknown Error        
    break;
    }
}
