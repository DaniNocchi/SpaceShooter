// obj_shake_controller - Step event
if (ShakeTime > 0) {
    ShakeTime -= 1 / room_speed; // Decrementa o tempo baseado na taxa de quadros

    var Shake = power(ShakeTime,2) * ShakePower; // Normaliza e aplica a potência do shake
    var camX = OrigCamX + random_range(-Shake, Shake);
    var camY = OrigCamY + random_range(-Shake, Shake);
    
    // Aplica a posição da câmera
    camera_set_view_pos(view_camera[CamNumber], camX, camY);
} else if OrigCamX != 0 or OrigCamY!= 0 {
	OrigCamX = lerp(OrigCamX,0,0.1)
	OrigCamY = lerp(OrigCamY,0,0.1)
    camera_set_view_pos(view_camera[CamNumber], OrigCamX, OrigCamY);
} else {
	instance_destroy()
	camera_set_view_pos(view_camera[CamNumber], OrigCamX, OrigCamY);
}
