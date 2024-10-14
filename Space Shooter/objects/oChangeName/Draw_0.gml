if live_call() return live_result
#region button
draw_sprite_ext(sprite_index, image_index, x, y, escx, escy, 0, c_white, 1)

escx=lerp(escx, 0.8, 0.2)
escy=lerp(escy, 0.6, 0.2)

draw_set_font(fButtons)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
switch global.translation {
	case 1:
	draw_text_transformed(x,y,"CHANGE NAME",0.55,0.55,0)
	break
	case 2:
	draw_text_transformed(x,y,"MUDAR NOME",0.55,0.55,0)
	break
	case 3:
	draw_text_transformed(x,y,"CAMBIAR NOMBRE",0.55,0.55,0)
	break
}
#endregion
if os_type = os_windows {
#region drawing stuff on the screen
var _x1 = 448
var _y = (room_height/2)-(sprite_get_height(sBase)*1.3)/2
var _y1 = _y + (sprite_get_height(sBase)*1.3)/2

if changeNameProtocol = 1 {
	draw_sprite_stretched_ext(sBlack,image_index,-64,-32,sprite_get_width(sBlack)*23,sprite_get_height(sBlack)*13,c_white,GUIalpha-0.30)
	draw_sprite_stretched_ext(sBase,image_index,_x1,_y,sprite_get_width(sBase)*7,sprite_get_height(sBase)*1.3,c_white,GUIalpha)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(fBig)
	draw_text(_x1+15,_y1,keyboard_string)
	if line=1 {
	draw_text(_x1+15+string_width(keyboard_string),_y1,"|")
	}
	draw_set_halign(fa_middle)
	draw_set_valign(fa_bottom)
	draw_set_font(fButtons)
	var _NewNameTextScale =2
	switch global.translation {
		case 1:
		draw_text_transformed(_x1+(sprite_get_width(sBase)*7/2),_y1-70,"INSERT NEW NAME",_NewNameTextScale,_NewNameTextScale,0)
		break																											
		case 2:																										
		draw_text_transformed(_x1+(sprite_get_width(sBase)*7/2),_y1-70,"INSIRA O NOVO NOME",_NewNameTextScale,_NewNameTextScale,0)
		break																											
		case 3:																										
		draw_text_transformed(_x1+(sprite_get_width(sBase)*7/2),_y1-70,"SU NUEVO NOMBRE",_NewNameTextScale,_NewNameTextScale,0)
		break
	}
}
#endregion
#region Messages
if NameExists = 1 {
	draw_set_font(fMedium)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	switch global.translation {
		case 1:
		draw_text_color(15,575,"* Name already in use, try again!",c_red,c_red,c_red,c_red,AlphaExists)
		break
		case 2:
		draw_text_color(15,575,"* Nome em uso, tente outro novamente!",c_red,c_red,c_red,c_red,AlphaExists)
		break
		case 3:
		draw_text_color(15,575,"* Nombre ya está en uso, iItentalo de nuevo!",c_red,c_red,c_red,c_red,AlphaExists)
		break
	}
 

}
if NameDone = 1 {
	draw_set_font(fMedium)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	switch global.translation {
		case 1:
		draw_text_color(15,575,"* Name changed successfully!",c_lime,c_lime,c_lime,c_lime,AlphaDone) 
		break
		case 2:
		draw_text_color(15,575,"* Nome alterado com sucesso!",c_lime,c_lime,c_lime,c_lime,AlphaDone) 
		break
		case 3:
		draw_text_color(15,575,"* iNombre cambiado con éxito!",c_lime,c_lime,c_lime,c_lime,AlphaDone) 
		break
	}
}



if !string_is_alphanumeric(newName) and changeNameProtocol = 1 {
	draw_set_font(fBig)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	
	switch global.translation {
		case 1:
		draw_text_color(_x1+(sprite_get_width(sBase)*7/2),_y1+150,"* You can only use letters and numbers!",c_red,c_red,c_red,c_red,1) 
		break					 
		case 2:				 
		draw_text_color(_x1+(sprite_get_width(sBase)*7/2),_y1+150,"* Você só pode usar letras e números!",c_red,c_red,c_red,c_red,1) 
		break					  
		case 3:				  
		draw_text_color(_x1+(sprite_get_width(sBase)*7/2),_y1+150,"* iSolo puedes usar letras y números!",c_red,c_red,c_red,c_red,1) 
		break
	}
}
#endregion
}