extends Node2D

var q_ConvexPolygonShape2D : ConvexPolygonShape2D = ConvexPolygonShape2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ConvexPolygonShape2D = ConvexPolygonShape2D.new()

		if randi() % 2 == 1:
			q_ConvexPolygonShape2D.set_points(Autoload.get_poolvector2array())
		if randi() % 2 == 1:
			q_ConvexPolygonShape2D.set_point_cloud( Autoload.get_poolvector2array())
