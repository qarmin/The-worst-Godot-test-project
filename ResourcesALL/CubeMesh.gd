extends Node2D

var q_CubeMesh: CubeMesh = CubeMesh.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CubeMesh, true)


func nodeFunction(q_CubeMesh: CubeMesh, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CubeMesh = CubeMesh.new()
	if randi() % 2 == 1:
		AutoResourcesPrimitiveMesh.nodeFunction(q_CubeMesh)

	if randi() % 2 == 1:
		q_CubeMesh.set_size(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_CubeMesh.set_subdivide_width(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CubeMesh.set_subdivide_height(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CubeMesh.set_subdivide_depth(Autoload.get_inti(5))
