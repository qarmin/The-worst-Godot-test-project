extends Node2D

var q_SphereShape3D: SphereShape3D = SphereShape3D.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_SphereShape3D, true)


func nodeFunction(q_SphereShape3D: SphereShape3D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_SphereShape3D = SphereShape3D.new()
	if randi() % 2 == 1:
		AutoResourcesShape.nodeFunction(q_SphereShape3D)

	if randi() % 2 == 1:
		q_SphereShape3D.set_radius(Autoload.get_float())
