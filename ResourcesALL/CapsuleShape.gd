extends Node2D

var q_CapsuleShape : CapsuleShape = CapsuleShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CapsuleShape,true)

func nodeFunction(q_CapsuleShape : CapsuleShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_CapsuleShape = CapsuleShape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_CapsuleShape)

	if randi() % 2 == 1:
		q_CapsuleShape.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CapsuleShape.set_height(Autoload.get_float())
