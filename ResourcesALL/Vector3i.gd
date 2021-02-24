extends Node2D

var q_Vector3i: Vector3i = Autoload.get_vector3i()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Vector3i, true)


func nodeFunction(q_Vector3i: Vector3i, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Vector3i = Autoload.get_vector3i()

	if randi() % 2 == 1:
		q_Vector3i.abs()
		
	if randi() % 2 == 1:
		q_Vector3i.max_axis()
	if randi() % 2 == 1:
		q_Vector3i.min_axis()

	if randi() % 2 == 1:
		q_Vector3i.sign()
