extends Node2D

var q_OccluderPolygon2D : OccluderPolygon2D = OccluderPolygon2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_OccluderPolygon2D = OccluderPolygon2D.new()

		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_closed(Autoload.get_bool())
		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_cull_mode(Autoload.get_int()) # CullMode
		if randi() % 2 == 1:
			q_OccluderPolygon2D.set_polygon(Autoload.get_poolvector2array())
