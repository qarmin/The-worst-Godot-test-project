extends Node2D

var q_ConvexPolygonShape : ConvexPolygonShape = ConvexPolygonShape.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ConvexPolygonShape = ConvexPolygonShape.new()

		if randi() % 2 == 1:
			q_ConvexPolygonShape.set_points(Autoload.get_poolvector3array())
