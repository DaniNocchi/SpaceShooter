if layer_sequence_is_finished(bombfall_seq) && boolean=1 {
	 layer_destroy_instances(bombfall_seq)
	 instance_destroy()
	 boolean=0
}
