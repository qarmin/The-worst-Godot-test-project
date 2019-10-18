extends Node2D

# warning-ignore:unused_variable
var q_int : int
onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		if randi() % 2 == 1:
			q_int = int(Autoload.get_bool())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_float())
		if randi() % 2 == 1:
			q_int = int(Autoload.get_string())
