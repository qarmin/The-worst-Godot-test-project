extends Node2D

var q_HeightMapShape : HeightMapShape = HeightMapShape.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_HeightMapShape,true)

func nodeFunction(q_HeightMapShape : HeightMapShape, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_HeightMapShape = HeightMapShape.new()
	if randi() % 2 == 1:
		AutoResourcesShape.nodeFunction(q_HeightMapShape)

	if randi() % 2 == 1:
			q_HeightMapShape.set_map_width(Autoload.get_int())
	if randi() % 2 == 1:
			q_HeightMapShape.set_map_depth(Autoload.get_int())
	if randi() % 2 == 1:
		q_HeightMapShape.set_map_data(Autoload.get_packedrealarray())
