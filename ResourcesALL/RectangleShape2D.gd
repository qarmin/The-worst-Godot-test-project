extends Node2D

var q_RectangleShape2D : RectangleShape2D = RectangleShape2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RectangleShape2D,true)

func nodeFunction(q_RectangleShape2D : RectangleShape2D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_RectangleShape2D = RectangleShape2D.new()
	if randi() % 2 == 1:
		AutoResourcesShape2D.nodeFunction(q_RectangleShape2D)

	if randi() % 2 == 1:
		q_RectangleShape2D.set_extents(Autoload.get_vector2())
