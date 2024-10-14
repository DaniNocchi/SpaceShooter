if layer_sequence_is_finished(bombfall_seq) = true {
	global.bdamage=1
	layer_sequence_destroy(bombfall_seq)
	ExplosionParticle = part_system_create(partExplosion)
	ExplosionIndex = part_emitter_create(ExplosionParticle)
	part_system_position(ExplosionParticle, oBomb.x, oBomb.y)
	part_system_layer(ExplosionParticle,"Particles")
	audio_play_sound(soExplosion, 1, 0)
	start_screen_shake(1.5, 6, 0);
	oArea.areaAlpha = 0 
	alarm[0] = room_speed*0.5
}
