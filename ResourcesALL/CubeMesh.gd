extends Node2D

var q_BoxMesh: BoxMesh = BoxMesh.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_BoxMesh, true)


func nodeFunction(q_BoxMesh: BoxMesh, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_BoxMesh = BoxMesh.new()
	if randi() % 2 == 1:
		AutoResourcesPrimitiveMesh.nodeFunction(q_BoxMesh)

	if randi() % 2 == 1:
		q_BoxMesh.set_size(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_BoxMesh.set_subdivide_width(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_BoxMesh.set_subdivide_height(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_BoxMesh.set_subdivide_depth(Autoload.get_inti(5))
