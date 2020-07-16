extends Node2D

# warning-ignore:unused_variable
var q_bool: bool = false

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_bool, true)


func nodeFunction(q_bool: bool, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_bool = bool(Autoload.get_int())
# warning-ignore:narrowing_conversion
		if randi() % 2 == 1:
			q_bool = bool(Autoload.get_float())
		if randi() % 2 == 1:
			q_bool = bool(Autoload.get_string())
