extends Node2D

var q_CylinderShape : CylinderShape = CylinderShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CylinderShape,true)

func nodeFunction(q_CylinderShape : CylinderShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_CylinderShape = CylinderShape.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_CylinderShape)

	if randi() % 2 == 1:
		q_CylinderShape.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CylinderShape.set_height(Autoload.get_float())
