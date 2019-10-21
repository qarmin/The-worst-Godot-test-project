extends Node2D

var q_RayShape2D : RayShape2D = RayShape2D.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RayShape2D,true)

func nodeFunction(q_RayShape2D : RayShape2D, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_RayShape2D = RayShape2D.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_RayShape2D)

	if randi() % 2 == 1:
		q_RayShape2D.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_RayShape2D.set_slips_on_slope(Autoload.get_bool())
