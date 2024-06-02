// Inicia o efeito de shake
function start_screen_shake(Time, Power=5, CameraNumber=0) {
    var controller = instance_create_layer(0, 0, "Instances", oShake);
    controller.ShakeTime = Time;
    controller.ShakePower = Power;
    controller.CamNumber = CameraNumber;
    controller.OrigCamX = camera_get_view_x(view_camera[CameraNumber]);
    controller.OrigCamY = camera_get_view_y(view_camera[CameraNumber]);
}
