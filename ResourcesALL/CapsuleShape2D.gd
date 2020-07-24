extends Node2D

var q_CapsuleShape2D: CapsuleShape2D = CapsuleShape2D.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_CapsuleShape2D, true)


func nodeFunction(q_CapsuleShape2D: CapsuleShape2D, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_CapsuleShape2D = CapsuleShape2D.new()
	if randi() % 2 == 1:
		AutoResourcesShape2D.nodeFunction(q_CapsuleShape2D)

	if randi() % 2 == 1:
		q_CapsuleShape2D.set_radius(Autoload.get_float())
	if randi() % 2 == 1:
		q_CapsuleShape2D.set_height(Autoload.get_float())
