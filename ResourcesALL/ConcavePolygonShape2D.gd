extends Node2D

var q_ConcavePolygonShape2D : ConcavePolygonShape2D = ConcavePolygonShape2D.new()
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_ConcavePolygonShape2D = ConcavePolygonShape2D.new()

		if randi() % 2 == 1:
			q_ConcavePolygonShape2D.set_segments(Autoload.get_poolvector2array())
