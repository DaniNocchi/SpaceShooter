bombfall_seq = layer_sequence_create("sequences",x,y,sebombfall)
boolean=0
area = instance_create_layer(mouse_x,mouse_y,"everything",oArea)
oArea.areaAlpha = 1
global.bombs-=1