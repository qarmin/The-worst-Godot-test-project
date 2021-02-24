extends Node2D

# warning-ignore:unused_variable
var q_int: int = 0

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_int, true)


func nodeFunction(q_int: int, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_int = int(Autoload.get_bool())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_int())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_float())
		if randi() % 2 == 1:
			q_int = int()
