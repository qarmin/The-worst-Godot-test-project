extends Node2D

var q_BoxShape : BoxShape = BoxShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_BoxShape,true)

func nodeFunction(q_BoxShape : BoxShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_BoxShape = BoxShape.new()
	if randi() % 2 == 1:
		AutoResourcesShape.nodeFunction(q_BoxShape)

	if randi() % 2 == 1:
		q_BoxShape.set_extents(Autoload.get_vector3())
