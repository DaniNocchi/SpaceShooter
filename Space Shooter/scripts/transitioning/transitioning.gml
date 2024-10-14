function beauty_transition(_room, _color, _nointro = 0){
	if !instance_exists(oTransition) {
		var _transition = instance_create_layer(x,y,"Instances",oTransition)
		_transition.TargetRoom=_room
		_transition.col=_color
		if _nointro=1 _transition.speedsprite = _transition.imax + (_transition.xmax + _transition.ymax)
	}
}
