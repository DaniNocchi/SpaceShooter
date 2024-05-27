bombfall_seq = layer_sequence_create("sequences",x,y,sebombfall)
explosion_seq = layer_sequence_create("sequences",x,y,seExplosion)
layer_sequence_destroy(explosion_seq)
boolean=0
area = instance_create_layer(mouse_x,mouse_y,"everything",oArea)
global.bombs-=1