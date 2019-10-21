extends Node2D

var q_SphereShape : SphereShape = SphereShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_SphereShape,true)

func nodeFunction(q_SphereShape : SphereShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_SphereShape = SphereShape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_SphereShape)

	if randi() % 2 == 1:
		q_SphereShape.set_radius(Autoload.get_float())
