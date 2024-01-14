for (var i = 0; i < 10; ++i) {
    var it = instance_create_depth(x, y, 0, oEffect, {speed: 3, gravity: -0.08, gravity_direction: irandom(360)})
	it.direction = it.gravity_direction
}
