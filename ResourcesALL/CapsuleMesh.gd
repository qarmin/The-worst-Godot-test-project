extends Node2D

var q_CapsuleMesh: CapsuleMesh = CapsuleMesh.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CapsuleMesh, true)


func nodeFunction(q_CapsuleMesh: CapsuleMesh, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CapsuleMesh = CapsuleMesh.new()
	if randi() % 2 == 1:
		AutoResourcesPrimitiveMesh.nodeFunction(q_CapsuleMesh)

	if randi() % 2 == 1:
		q_CapsuleMesh.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CapsuleMesh.set_mid_height(Autoload.get_float())
	if randi() % 2 == 1:
		q_CapsuleMesh.set_radial_segments(Autoload.get_inti(5))
	if randi() % 2 == 1:
		q_CapsuleMesh.set_rings(Autoload.get_inti(5))
