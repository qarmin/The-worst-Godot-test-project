extends Node2D

var q_RayShape3D: RayShape3D = RayShape3D.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_RayShape3D, true)


func nodeFunction(q_RayShape3D: RayShape3D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_RayShape3D = RayShape3D.new()
	if randi() % 2 == 1:
		AutoResourcesShape.nodeFunction(q_RayShape3D)

	if randi() % 2 == 1:
		q_RayShape3D.set_length(Autoload.get_float())
	if randi() % 2 == 1:
		q_RayShape3D.set_slips_on_slope(Autoload.get_bool())
