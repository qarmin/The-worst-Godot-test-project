extends Node2D

var q_ConcavePolygonShape2D: ConcavePolygonShape2D = ConcavePolygonShape2D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_ConcavePolygonShape2D, true)


func nodeFunction(q_ConcavePolygonShape2D: ConcavePolygonShape2D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_ConcavePolygonShape2D = ConcavePolygonShape2D.new()
	if randi() % 2 == 1:
		AutoResourcesShape2D.nodeFunction(q_ConcavePolygonShape2D)

	if randi() % 2 == 1:
		q_ConcavePolygonShape2D.set_segments(Autoload.get_packedvector2array())
