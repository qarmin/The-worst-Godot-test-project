extends Node2D

var q_Shape : Shape = BoxShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Shape,true)

func nodeFunction(q_Shape : Shape, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_Shape = Shape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_Shape)

	if randi() % 2 == 1:
		q_Shape.set_margin(Autoload.get_float())
