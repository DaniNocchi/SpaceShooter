if layer_sequence_is_finished(bombfall_seq) = true {
	global.bdamage=1
	layer_sequence_destroy(bombfall_seq)
	explosion_seq = layer_sequence_create("sequences",x,y,seExplosion)
}

if layer_sequence_is_finished(explosion_seq) = true {
	global.bdamage=0
	layer_sequence_destroy(explosion_seq)
	instance_destroy()
}
