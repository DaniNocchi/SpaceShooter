if areaAlpha = 1 {
	image_alpha = 0.35
} else if areaAlpha=0 and image_alpha > 0 {
	image_alpha = clamp(image_alpha - 0.01, 0, 0.35);
} else if areaAlpha = 0 and image_alpha<= 0 {
	instance_destroy()
}