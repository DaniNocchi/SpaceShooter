switch(state) {
    case states.OUT:
        if speedsprite < imax + (xmax + ymax) {
            speedsprite += speedspriteinc;
        } else { 
            state = states.IN;
			if room_exists(TargetRoom) room_goto(TargetRoom);  
        }
        break;
    case states.IN:
        if speedsprite > 0 {
            speedsprite -= speedspriteinc;
        } else {
            instance_destroy();
        }
        break;
}
